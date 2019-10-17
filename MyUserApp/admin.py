from django.contrib import admin
from MyUserApp.models import UserRole,UserSignup


# Register your models here.
admin.site.register(UserRole),
admin.site.register(UserSignup)
