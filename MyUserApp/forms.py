from django import forms
from MyUserApp.models import UserSignup


class UserSignupForm(forms.ModelForm):
    class Meta:
        model = UserSignup
        exclude = ["roleId",
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
                 "userConfirmationlink",
                 "userToken",
                 "isAvailable",
                 "isQueue",
                 "isVerified",
                 "isActive",
                 ]