from django.db import models

# Create your models here.

class UserRole(models.Model):
    roleId=models.AutoField(primary_key=True)
    rolName = models.CharField(max_length=200, default="")
    isActive = models.BooleanField(default=True)

class UserSignup(models.Model):
    roleId = models.ForeignKey(UserRole, on_delete=models.CASCADE)
    userFullName = models.CharField(max_length=200, default="")
    userEmail = models.CharField(primary_key=True, max_length=200, default="")
    userPassword = models.CharField(max_length=200, default="")
    userMobile = models.CharField(max_length=200, default="")
    userAge=models.CharField(max_length=10,default="")
    userAddress=models.CharField(max_length=500,default="")
    userCity=models.CharField(max_length=10,default="")
    userState=models.CharField(max_length=200,default="")
    userImage = models.CharField(max_length=200, default="")
    isActive = models.BooleanField(default=True)
    userOtp=models.CharField(max_length=10,default="")
    userOtptime=models.CharField(max_length=200,default="")
    userConfirmationlink=models.CharField(max_length=200,default="")
    userToken=models.CharField(max_length=200,default="")
    isAvailable=models.BooleanField(default=True)
    isQueue=models.BooleanField(default=False)
    isVerified=models.BooleanField(default=False)


class ContactUs(models.Model):
    userEmail = models.CharField(primary_key=True, max_length=200)
    subject = models.CharField(max_length=500,default="")
    contactDate = models.CharField(max_length=30, default="")
    textArea = models.CharField(max_length=1000, default="")


