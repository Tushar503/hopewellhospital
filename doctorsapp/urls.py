from doctorsapp import views
from django.conf.urls import url

app_name='doctorsapp'

urlpatterns=[
    url(r'^$',views.doctors,name="doctors"),
    url(r'^viewpatient/$',views.viewpatient,name="viewpatient"),
    url(r'^updatepatient/$',views.updatepatient,name="updatepatient")

]
