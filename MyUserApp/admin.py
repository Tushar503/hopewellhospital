from django.contrib import admin
from MyUserApp.models import UserRole,UserSignup,ContactUs



# Register your models here.
admin.site.register(UserRole),
admin.site.register(UserSignup),
admin.site.register(ContactUs)
