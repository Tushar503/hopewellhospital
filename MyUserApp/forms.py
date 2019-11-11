from django import forms
from MyUserApp.models import UserSignup
from MyUserApp.models import ContactUs


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


class ContactUsForm(forms.ModelForm):
    class Meta:
        model = ContactUs
        exclude = ["userEmail",
                   "subject",
                   "contactDate",
                   "textArea",
                   ]



