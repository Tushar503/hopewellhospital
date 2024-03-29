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
from managerapp.models import AvailableTest
from managerapp.forms import AvailableTestForm
from staffapp.forms import PatientTestForm
from staffapp.models import PatientTest
from staffapp.models import PatientPrescription
from staffapp.forms import PatientPrescriptionForm
import datetime as dt

from Authorize import authcheck
def staff(request):
    try:
        authdata = authcheck.authentication(request.session['Authentication'], request.session['roleid'],
                                            myconstants.STAFF)

        if (authdata == True):

            email = request.session['useremail']

            data = Staff.objects.get(userEmail=email)

            return render(request, "staffpage.html", {'d2': data})

        else:

            authinfo, message = authdata
            if (message == "Invalid_user"):
                return redirect("/user/unauthorised_access/")

            elif (message == "Not_Login"):
                return redirect("/notlogin/")
    except:
        return redirect("/notlogin/")


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
        f.isBooked=False
        f.userToken = ""
        f.userOtp = ""
        f.userOtptime = " "
        f.depttId_id=request.POST["deptid"]


        f.save()

        #email_send.e_mail("signuplink", email, confirmationlink)

        return render(request, "addstaff.html", {'success': True})

    return render(request, "addstaff.html",{'d':dept})

def appotiment(request):
    dept = Department.objects.all()
    dept1 = Staff.objects.filter(roleId=2,isBooked=0)

    if request.method == "POST":
        form = AppointmentForm(request.POST)
        f = form.save(commit=False)
        f.userEmail = request.session['useremail']
        f.Department_id=request.POST["deppartment"]
        f.DoctorEmail_id=request.POST["doctor"]
        f.AppointmentDate=request.POST["date"]
        f.isActive = True
        f.isQueue = False
        f.isDiagonal=False

        f.save()
        return render(request, "appotiment.html", {'taru': True})
    return render(request, "appotiment.html",{'d': dept, 'd1': dept1})

def staffview(request):
    email = request.session['useremail']
    data = Appointment.objects.filter(isQueue=0)
    return render(request, "appottimenttabel.html", {'taru': True, 'd1': data})

def updateappointment(request):
    get_key = request.GET["ed"]
    dept = Department.objects.all()
    dept1=Staff.objects.filter(roleId=2)
    if request.method == "POST":
        vdeppartment = request.POST["deppartment"]
        vdoctor = request.POST["doctor"]
        updatedata = Appointment(userEmail=get_key, Department_id=vdeppartment,DoctorEmail_id=vdoctor)
        updatedata.save(
            update_fields=["Department_id","DoctorEmail_id"])
        return render(request, "updateappointment.html", {'taru': True})
    return render(request, "updateappointment.html", {'d': dept, 'd1': dept1})


def todayappointment(request):

    date = dt.date.today()
    dater = date.strftime("%Y-%m-%d")

    data = Appointment.objects.filter(AppointmentDate=dater,isQueue=0)
    print(data)
    return render(request, "todayappointment.html", {'taru': True, 'd1': data})
def diagnoseview(request):
    email = request.session['useremail']
    data = Appointment.objects.filter(isDiagonal=1)
    return render(request, "diagnoseview.html", {'taru': True, 'd1': data})



def Prescription(request):
    get_key = request.GET["pe"]
    data1 = Appointment.objects.filter(userEmail=get_key)
    data=AvailableTest.objects.all()
    if (request.method == "POST"):
        form = PatientPrescriptionForm(request.POST)
        f = form.save(commit=False)
        f.PatientId_id = request.POST['patientid']
        f.Medicine = request.POST['medicine']
        f.Prescription = request.POST['prescription']
        try:
            f.Test = request.POST['test']
        except:
            f.Test= False
        f.isActive = True
        f.save()
        idList = []
        for i in data:
            try:
                value = request.POST[str(i.TestId)]
                idList.append(value)
            except:
                pass

        for j in idList:
          tdata=AvailableTest.objects.get(TestId=j)
          form1 = PatientTestForm(request.POST)
          f1 = form1.save(commit=False)


          f1.TestName = tdata.TestName
          f1.TestPrice = tdata.TestPrice
          f1.ReportDate =tdata.ReportTime
          f1.TestDate = dt.date.today()
          f1.PatientId_id = get_key
          for i in data1:
            f1.DoctorId_id = i.DoctorEmail_id
          f1.isActive = True
          f1.save()

        return render(request, "prescription.html", {'taru': True })

    return render(request, "prescription.html", {'d1': get_key,'d2':data})


# def PatientTest(request):
#     get_key = request.GET["pe"]
#     data1 = Appointment.objects.filter(DoctorEmail_id=get_key)
#     if request.method=="POST":
#         try:
#             form=AvailableTestForm(request.POST)
#             f=form.save(commit=False)
#             f.TestName= request.POST["name"]
#             f.TestPrice = request.POST["price"]
#             f.ReportDate=request.POST["time"]
#             f.TestDate=request.POST["date"]
#             f.PatientId=get_key
#             for i in data:
#               f.DoctorId=i.DoctorEmail_id
#             f.isActive = True
#             f.save()
#             return render(request, "testadd.html", {'success': True})
#         except:
#             return render(request,"testadd.html",{'taru': True})
#
#     return render(request, "testadd.html")



