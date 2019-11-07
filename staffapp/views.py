from django.shortcuts import render,HttpResponse,redirect
from miscellaneous import email_send,myconstants
from staffapp.forms import StaffForm
from staffapp.models import Staff
from staffapp.forms import AppointmentForm
from staffapp.models import Appointment
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.hashers import make_password,check_password
from managerapp.forms import DepartmentForm
from managerapp.models import Department
import datetime as dt

from Authorize import authcheck
def staff(request):
    return render(request,"staffpage.html")

def addstaff(request):
    dept = Department.objects.all()
    if request.method == "POST":



        email = request.POST['useremail']
        form = StaffForm(request.POST)
        email = request.POST['useremail']
        #confirmationlink = "http://127.0.0.1:8000/verified/?email=" + email + "&token=" + otp
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
        f.roleId=request.POST["roleid"]
        f.userImage = image
        f.isActive = True
        f.isAvailable = True
        f.isQueue = False

        f.userToken = ""
        f.userOtp = ""
        f.userOtptime = " "
        f.depttId_id=request.POST["deptid"]


        f.save()

        #email_send.e_mail("signuplink", email, confirmationlink)

        return render(request, "addstaff.html", {'success': True})

    return render(request, "addstaff.html",{'d':dept})

def appotiment(request):
    if request.method == "POST":
        form = AppointmentForm(request.POST)
        f = form.save(commit=False)
        f.userName = request.POST["username"]
        f.userEmail = request.POST["useremail"]
        f.userMobile = request.POST["usermobile"]
        f.userAge = request.POST["userage"]
        f.userAddress = request.POST["useraddress"]
        f.userCity = request.POST["usercity"]
        f.userState = request.POST["userstate"]
        f.userDisease=request.POST["userdisease"]
        f.Department=""
        f.DoctorName=""
        f.AppointmentDate=dt.datetime.now()
        f.isActive = True
        f.isQueue = False

        f.save()
        return render(request, "appotiment.html", {'success': True})
    return render(request, "appotiment.html")

def staffview(request):
    email = request.session['useremail']
    data = Appointment.objects.all()
    return render(request, "appottimenttabel.html", {'taru': True, 'd1': data})
def updateappointment(request):
    dept = Department.objects.all()
    dept1=Staff.objects.all()
    vid = request.GET["ed"]
    data = Appointment.objects.get(userEmail=vid)
    if request.method == "POST":
        vdeppartment = request.POST["deppartment"]
        vdoctor = request.POST["doctor"]
        vqueue =True
        vactive=True

        updatedata = Appointment(userEmail=vid,Department=vdeppartment,DoctorName=vdoctor,isActive=vactive,isQueue=vqueue)
        updatedata.save(
            update_fields=["Department",
                           "DoctorName",
                           "isActive",
                           "isQueue",
                           ])
        return render(request, "updateappointment.html", {'taru': True})
    return render(request, "updateappointment.html", {'d': dept, 'd1': dept1})


