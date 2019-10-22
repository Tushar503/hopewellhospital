from django.db import models

# Create your models here.

class Department(models.Model):
    depttId = models.AutoField(primary_key=True)
    depttName = models.CharField(max_length=50, default="")
    isActive = models.BooleanField(default=True)

# class Loginrecords(models.model):
#     loginId = models.AutoField(primary_key=True)
#     loginTime = models.CharField(max_length=50, default="")
#     logoutTime = models.CharField(max_length=50, default="")
#     userId = models.CharField(max_length=50, default="")
#     ip_address = models.CharField(max_length=50, default="")
#     mac_address = models.CharField(max_length=50,default="")