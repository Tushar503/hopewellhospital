from MyUserApp import views
from django.conf.urls import url

app_name='MyUserApp'





urlpatterns=[


    url(r'^index/',views.home),
    url(r'^damy/$', views.damy, name="damy"),
    url(r'^unauthorized_access/$',views.unauthorised_access,name="unauthorised_access"),
    url(r'^changepassword/$',views.changepassword,name="changep"),
    url(r'^showprofile/$',views.showprofile,name="profile"),
    url(r'^updateprofile/$',views.updateprofile,name="profile")





]

