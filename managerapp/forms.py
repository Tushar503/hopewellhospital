from django import forms
from managerapp.models import Department

class DepartmentForm(forms.ModelForm):
    class Meta:
        model = Department
        exclude = ["depttId",
                   "depttName",
                   "isActive",
                   ]


