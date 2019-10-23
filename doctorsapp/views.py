from django.shortcuts import render,HttpResponse,redirect
from managerapp.forms import DepartmentForm
from managerapp.models import Department
from MyUserApp.forms import UserSignupForm
from MyUserApp.models import UserSignup

from Authorize import authcheck
from miscellaneous import email_send,myconstants

def doctors(request):
    return render(request,"doctors.html")