from django import forms
from staffapp.models import Staff

class StaffForm(forms.ModelForm):
    class Meta:
        model = Staff
        exclude = ["depttId",
                 "userFullName",
                 "userEmail",
                 "userPassword",
                 "userMobile",
                 "userAge",
                 "userAddress",
                 "userCity",
                 "userState",
                 "userImage",
                 "userOtp",
                 "userOtptime",
                 "userToken",
                 "isAvailable",
                 "isQueue",
                 "isVerified",
                 "isActive",
                 ]
