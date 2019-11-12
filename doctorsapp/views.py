from django.shortcuts import render,HttpResponse,redirect
from managerapp.forms import DepartmentForm
from managerapp.models import Department
from MyUserApp.forms import UserSignupForm
from MyUserApp.models import UserSignup
from staffapp.forms import AppointmentForm
from staffapp.models import Appointment


from Authorize import authcheck
from miscellaneous import email_send,myconstants

def doctors(request):
    # try:
    #     authdata = authcheck.authentication(request.session['Authentication'], request.session['roleid'],
    #                                         myconstants.DOCTORS)
    #
    #     if (authdata == True):
    #
    #         email = request.session['useremail']
    #
    #         data = UserSignup.objects.get(userEmail=email)
    #
    #         return render(request, "doctors.html", {'d2': data})
    #
    #     else:
    #
    #         authinfo, message = authdata
    #         if (message == "Invalid_user"):
    #             return redirect("/user/unauthorised_access/")
    #
    #         elif (message == "Not_Login"):
    #             return redirect("/notlogin/")
    # except:
    #     return redirect("/notlogin/")


    return render(request,"doctors.html")
def viewpatient(request):
    email = request.session['useremail']
    data = Appointment.objects.filter(userEmail=email)
    return render(request, "viewpatient.html", {'d1': data})