from django.shortcuts import render,HttpResponse,redirect
from miscellaneous import email_send,myconstants,staff_email
from staffapp.forms import StaffForm
from staffapp.models import Staff
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.hashers import make_password,check_password
from managerapp.forms import DepartmentForm
from managerapp.models import Department

from Authorize import authcheck

def addstaff(request):
    dept = Department.objects.all()
    if request.method == "POST":
        email = request.POST['useremail']
        paswrd = request.POST['userpassword']
        form = StaffForm(request.POST)
        email = request.POST['useremail']
        paswrd = request.POST['userpassword']


        confirmationlink = "http://127.0.0.1:8000/login/?email=%s?password=%s" % (email, paswrd) + paswrd

        image = None
        try:
             if request.FILES:
               my_file = request.FILES["image"]
               fs = FileSystemStorage()
               file_name = fs.save(my_file.name,my_file)
               image = fs.url(file_name)
               image = my_file.name

        except:
            pass
        f = form.save(commit=False)
        f.userFullName = request.POST["username"]
        f.userEmail = request.POST["useremail"]
        f.userPassword = make_password(request.POST["userpassword"])
        f.userMobile = request.POST["usermobile"]
        f.userAge = request.POST["userage"]
        f.userAddress = request.POST["useraddress"]
        f.userCity = request.POST["usercity"]
        f.userState = request.POST["userstate"]
        f.userPost=request.POST["post"]
        f.userImage = image
        f.isActive = True
        f.isAvailable = True
        f.isQueue = False

        f.userToken = ""
        f.userOtp = ""
        f.userOtptime = ""
        f.depttId_id=request.POST["deptid"]


        f.save()

        staff_email.email("Appointment Letter",email, paswrd, confirmationlink)

        return render(request, "addstaff.html", {'success': True})

    return render(request, "addstaff.html",{'d':dept})

