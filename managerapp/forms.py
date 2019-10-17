from django import forms
from managerapp.models import Department

class Department(forms.ModelForm):
    class Meta:
        model = Department
        exclude = ["depttId",
                   "depttName",
                   "isActive",
                   ]


