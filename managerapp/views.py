from django.shortcuts import render,HttpResponse,redirect
from managerapp.forms import DepartmentForm
from managerapp.models import Department

# Create your views here.
def manager(request):
    return render(request,"manager.html")


