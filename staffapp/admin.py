from django.contrib import admin
from staffapp.models import Staff
from staffapp.models import PatientPrescription

# Register your models here.
admin.site.register(Staff)
admin.site.register(PatientPrescription)