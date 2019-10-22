from django import forms
from managerapp.models import Department

class DepartmentForm(forms.ModelForm):
    class Meta:
        model = Department
        exclude = ["depttId",
                   "depttName",
                   "isActive",
                   ]

# class Loginrecordsform(forms.ModelForm):
#     class Meta:
#         model = Loginrecords
#         exclude = ["loginId",
#                    "loginTime",
#                    "logoutTime",
#                    "userId",
#                    "ip_address",
#                    "mac_address",
#                    ]



