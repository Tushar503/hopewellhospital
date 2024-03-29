from django import forms
from staffapp.models import Staff
from staffapp.models import Appointment
from staffapp.models import PatientPrescription
from staffapp.models import PatientTest

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
                 "isDiagonal"
                 ]


class PatientPrescriptionForm(forms.ModelForm):
    class Meta:
        model = PatientPrescription
        exclude = [
                 "PatientId",
                 "Prescription",
                 "Medicine",
                 "Test",
                 "isActive",
                 ]


class PatientTestForm(forms.ModelForm):
    class Meta:
        model = PatientTest
        exclude = ["TestId",
                   "TestName",
                   "TestPrice",
                   "ReportDate",
                   "TestDate",
                   "PatientId",
                   "DoctorId",
                   "isAvailable"
                   ]

