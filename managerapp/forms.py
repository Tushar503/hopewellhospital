from django import forms
from managerapp.models import Department
from managerapp.models import Loginrecords

class DepartmentForm(forms.ModelForm):
    class Meta:
        model = Department
        exclude = ["depttId",
                   "depttName",
                   "isActive",
                   ]

class LoginrecordsForm(forms.ModelForm):
    class Meta:
        model = Loginrecords
        exclude = ["loginId",
                   "loginTime",
                   "logoutTime",
                   "userId",
                   "ip_address",
                   "mac_address",
                   ]



