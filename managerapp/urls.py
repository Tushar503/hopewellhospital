from managerapp import views
from django.conf.urls import url

app_name='managerapp'

urlpatterns=[

    url(r'^$', views.manager, name="manager"),
    url(r'^department/$',views.departmentadd, name="department"),
    url(r'^departmentview/$',views.departmentview,name="deparmentview"),
    url(r'departmentupdate/$',views.departmentupdate,name="departmentupdate"),
    url(r'^deletedepartment/$',views.deletedepartment,name="deletedepartment")

]