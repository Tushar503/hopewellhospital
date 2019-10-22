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
        if (authdata == True):
            email = request.session['useremail']
            data = UserSignup.objects.get(userEmail=email)
            return render(request,"manager.html",{'d2':data})

        else:
            authinfo, message = authdata
            if (message == "Invalid_user"):
                return redirect("/user/unauthorised_access/")
            elif (message == "Not_Login"):
                return redirect("/notlogin/")
    except:
        return redirect("/notlogin/")



def departmentadd(request):
    if request.method=="POST":
        form=DepartmentForm(request.POST)
        f=form.save(commit=False)
        f.depttName= request.POST["department"]
        f.isActive = True
        f.save()
        return render(request, "department.html", {'success': True})

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




