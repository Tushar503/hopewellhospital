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

urlpatterns = [
    url('admin/', admin.site.urls),
    url(r'^user/',include('MyUserApp.urls')),
    url(r'^signup/$',views.usersignup),
    url(r'^verify/$',views.verify),
    url(r'^login/$',views.login,name="login"),
    url(r'^verified/$',views.verify,name="verify"),
    url(r'^damy/$',views.damy,name="damy")



]
