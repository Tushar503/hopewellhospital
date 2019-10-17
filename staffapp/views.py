from django.shortcuts import render,HttpResponse,redirect
from miscellaneous import email_send,myconstants
from MyUserApp.forms import UserSignupForm
from MyUserApp.models import UserSignup
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.hashers import make_password,check_password
from Authorize import authcheck

def addstaff(request):
    return render(request, "addstaff.html")