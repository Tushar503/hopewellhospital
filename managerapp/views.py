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


