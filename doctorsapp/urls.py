from doctorsapp import views
from django.conf.urls import url

app_name='doctorsapp'

urlpatterns=[
    url(r'^doctors/$',views.doctors,name="doctors")

]