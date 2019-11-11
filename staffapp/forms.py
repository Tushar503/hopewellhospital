from django import forms
from staffapp.models import Staff
from staffapp.models import Appointment

class StaffForm(forms.ModelForm):
    class Meta:
        model = Staff
        exclude = ["depttId",
                 "userFullName",
                 "userEmail",
                 "userPassword",
                 "userMobile",
                 "userAge",
                 "roleId",
                 "userAddress",
                 "userCity",
                 "userState",
                 "userImage",
                 "userOtp",
                 "userOtptime",
                 "userToken",
                 "isAvailable",
                 "isQueue",
                 "isVerified",
                 "isActive",
                 "isBooked",
                 ]

class AppointmentForm(forms.ModelForm):
    class Meta:
        model = Appointment
        exclude = [
                 "userEmail",
                 "Department",
                 "DoctorEmail",
                 "AppointmentDate",
                 "isQueue",
                 "isActive",
                 ]