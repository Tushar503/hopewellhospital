from django.contrib import admin
from managerapp.models import Department
from managerapp.models import Loginrecords
from managerapp.models import AvailableTest

# Register your models here.
admin.site.register(Department),
admin.site.register(Loginrecords),
admin.site.register(AvailableTest)
