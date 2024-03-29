from django.db import models
from managerapp.models import Department
from managerapp.models import AvailableTest

# Create your models here.

class Staff(models.Model):
    depttId = models.ForeignKey(Department, on_delete=models.CASCADE)
    userFullName = models.CharField(max_length=200, default="")
    userEmail = models.CharField(primary_key=True, max_length=200, default="")
    userPassword = models.CharField(max_length=200, default="")
    userMobile = models.CharField(max_length=200, default="")
    userAge = models.CharField(max_length=10, default="")
    roleId=models.CharField(max_length=1, default="")
    userAddress = models.CharField(max_length=500, default="")
    userCity = models.CharField(max_length=200, default="")
    userState = models.CharField(max_length=200, default="")
    userImage = models.CharField(max_length=200, default="")
    isActive = models.BooleanField(default=True)
    userOtp = models.CharField(max_length=10, default="")
    userOtptime = models.CharField(max_length=200, default="")
    #userConfirmationlink = models.CharField(max_length=200, default="")
    userToken = models.CharField(max_length=200, default="")
    isAvailable = models.BooleanField(default=True)
    isQueue = models.BooleanField(default=False)
    isVerified = models.BooleanField(default=False)
    isBooked=models.BooleanField(default=False)


class Appointment(models.Model):
    userEmail = models.CharField(primary_key=True, max_length=200, default="")
    Department = models.ForeignKey(Department,on_delete=models.CASCADE)
    DoctorEmail = models.ForeignKey(Staff,on_delete=models.CASCADE,default="")
    AppointmentDate = models.CharField(max_length=200, default="")
    isActive = models.BooleanField(default=True)
    isQueue = models.BooleanField(default=False)
    isDiagonal=models.BooleanField(default=False)
class PatientPrescription(models.Model):
    PrescriptionId=models.AutoField(primary_key=True)
    PatientId = models.ForeignKey(Appointment, on_delete=models.CASCADE, default="")
    Medicine=models.CharField(max_length=500, default="")
    Prescription=models.CharField(max_length=500, default="")
    Test=models.BooleanField(default=False)
    isActive = models.BooleanField(default=True)
class PatientTest(models.Model):
    TestId = models.AutoField(primary_key=True)
    TestName = models.CharField(max_length=50, default="", unique=True)
    TestPrice = models.CharField(max_length=50, default="")
    TestDate= models.CharField(max_length=50, default="")
    ReportDate = models.CharField(max_length=50, default="")
    PatientId = models.ForeignKey(Appointment, on_delete=models.CASCADE, default="")
    DoctorId = models.ForeignKey(Staff, on_delete=models.CASCADE, default="")
    isAvailable = models.BooleanField(default=True)






