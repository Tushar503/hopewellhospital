from staffapp import views
from django.conf.urls import url

app_name='staffapp'

urlpatterns=[
    url(r'^$', views.staff, name="staff"),
    url(r'^addstaff/$', views.addstaff, name="addstaff"),
    url(r'^appotiment/$', views.appotiment, name="appotiment"),
    url(r'^staffview/$', views.staffview, name="staffview"),
    url(r'^updateappointment/$', views.updateappointment, name="updateappointment"),
    url(r'^todayappointment/$', views.todayappointment, name="todayappointment"),
    url(r'^diagnoseview/$',views.diagnoseview,name="diagnoseview"),
    url(r'^Prescription/$',views.Prescription,name="Prescription"),

]