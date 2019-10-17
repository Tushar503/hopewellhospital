from django.db import models

# Create your models here.

class Department(models.Model):
    depttId = models.AutoField(primary_key=True)
    depttName = models.CharField(max_length=50, default="")
    isActive = models.BooleanField(default=True)