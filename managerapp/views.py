from django.shortcuts import render,HttpResponse,redirect
from managerapp.forms import DepartmentForm
from managerapp.models import Department
from MyUserApp.forms import UserSignupForm
from MyUserApp.models import UserSignup

from Authorize import authcheck
from miscellaneous import email_send,myconstants

# Create your views here.
def manager(request):


    try:
        authdata = authcheck.authentication(request.session['Authentication'], request.session['roleid'],
                                            myconstants.MANAGER)
        print("step 1")
        if (authdata == True):
            print("step 2")
            email = request.session['useremail']
            print("step x")
            data = UserSignup.objects.get(userEmail=email)
            print("step y")
            return render(request,"manager.html",{'d2':data})
            print("step 3")
        else:
            print("step4")
            authinfo, message = authdata
            if (message == "Invalid_user"):
                return redirect("/user/unauthorised_access/")
                print("step5")
            elif (message == "Not_Login"):
                return redirect("/notlogin/")
                print("step6")
    except:
        print("step7")
        return redirect("/notlogin/")



def departmentadd(request):
    if request.method=="POST":
        try:
            form=DepartmentForm(request.POST)
            f=form.save(commit=False)
            f.depttName= request.POST["department"]
            f.isActive = True
            f.save()
            return render(request, "department.html", {'success': True})
        except:
            return render(request,"department.html",{'taru': True})

    return render(request, "department.html")


def departmentview(request):
    data=Department.objects.all()
    return render(request,"departmentview.html",{'success': True,'d2':data})


def departmentupdate(request):

        depttid=request.GET["id"]
        data=Department.objects.get(depttId=depttid)

        if request.method == "POST":
            depttname = request.POST["department"]
            updatedata=Department(depttId=depttid,depttName=depttname)
            updatedata.save(
            update_fields=["depttName"])
            return redirect("/manager/departmentview/")
        return render(request,"departmentupdate.html",{'success': True, 'd1':data})




def deletedepartment(request):
        depttid = request.GET["id"]
        data = Department.objects.get(depttId=depttid)
        data.delete()
        return redirect("/manager/departmentview/")




