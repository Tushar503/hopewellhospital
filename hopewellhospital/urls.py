"""hopewellhospital URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django import views
from django.conf.urls import url,include
from MyUserApp import views
from django.conf import settings
from django.conf.urls.static import static



urlpatterns = [
    url('admin/', admin.site.urls),
    url(r'^',include('social_django.urls',namespace='social')),
    url(r'^user/',include('MyUserApp.urls')),
    url(r'^manager/',include('managerapp.urls')),
    url(r'^doctors/',include('doctorsapp.urls')),
    url(r'^staffapp/',include('staffapp.urls')),
    url(r'^signup/$',views.usersignup),
    url(r'^verified/$',views.verify),
    url(r'^login/$',views.login,name="login"),
    url(r'^$',views.home,name="index"),

    url(r'^notlogin/$',views.notlogin,name="notlogin"),

    url(r'^logout/$',views.logout,name="logout"),
    url(r'^contactus/$',views.contactus,name="contactus"),
    url(r'^facilites/$',views.facilites,name="facilites"),
    url(r'^aboutus/$',views.aboutus,name="aboutus")



]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
