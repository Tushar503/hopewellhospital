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
    UserCity=models.CharField(max_length=10,default="")
    UserState=models.CharField(max_length=200,default="")
    isActive = models.BooleanField(default=True)


