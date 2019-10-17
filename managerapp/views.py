from django.shortcuts import render,HttpResponse,redirect
from managerapp.forms import DepartmentForm
from managerapp.models import Department

# Create your views here.
def manager(request):
    return render(request,"manager.html")

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
    if request.method=="POST":
        depttname = request.POST["department"]
        updatedata=Department(depttName=depttname)
        updatedata.save(
            update_fields=["depttName"]
        )
        return render(request,"departmentupdate.html",{'success': True, 'd1':True})

def deletedepartment(request):
        depttid = request.GET["id"]
        data = Department.objects.get(depttId=depttid)
        data.delete()
        return render("departmentview.html")
#def






