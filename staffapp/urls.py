from staffapp import views
from django.conf.urls import url

app_name='staffapp'

urlpatterns=[
    url(r'^addstaff/$', views.addstaff, name="addstaff"),

]