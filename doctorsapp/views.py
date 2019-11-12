from django.shortcuts import render,HttpResponse,redirect
from managerapp.forms import DepartmentForm
from managerapp.models import Department
from MyUserApp.forms import UserSignupForm
from MyUserApp.models import UserSignup
from staffapp.forms import AppointmentForm
from staffapp.models import Appointment
from staffapp.models import Staff


from Authorize import authcheck
from miscellaneous import email_send,myconstants

def doctors(request):
    try:
        authdata = authcheck.authentication(request.session['Authentication'], request.session['roleid'],
                                            myconstants.DOCTORS)

        if (authdata == True):

            email = request.session['useremail']

            data = Staff.objects.get(userEmail=email)

            return render(request, "doctors.html", {'d2': data})

        else:

            authinfo, message = authdata
            if (message == "Invalid_user"):
                return redirect("/user/unauthorised_access/")

            elif (message == "Not_Login"):
                return redirect("/notlogin/")
    except:
        return redirect("/notlogin/")



    return render(request,"doctors.html")
def viewpatient(request):
    email = request.session['useremail']
    Email=Appointment.objects.get(DoctorEmail_id=email)

    data = Appointment.objects.filter(userEmail=Email.userEmail,isQueue=0)
    return render(request, "viewpatient.html", {'d1': data})

def updatepatient(request):
    email = request.session['useremail']
    get_key = request.GET["pe"]

    dept = Appointment.objects.get(DoctorEmail_id=email)

    vdiaganose = True
    vQueue = True
    updatedata = Appointment(userEmail=get_key, isDiagonal=vdiaganose,isQueue=vQueue)
    updatedata.save(
        update_fields=["isDiagonal","isQueue"])
    return redirect("/doctors/viewpatient/")
