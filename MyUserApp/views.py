from django.shortcuts import render,HttpResponse,redirect
from miscellaneous import email_send,myconstants
from MyUserApp.forms import UserSignupForm
from Authorize import authcheck

# Create your views here.
def home(request):
    return render(request,"index.html")

def usersignup(request):
    if request.method == "POST":
        email = request.POST['useremail']
        otp, time = email_send.OtpSend()
        confirmationlink = "http://127.0.0.1:8000/verifyuser/?email=" + email + "&token=" + otp


        form = UserSignupForm(request.POST)
        if form.is_valid():
            f = form.save(commit=False)
            f.userFullName = request.POST["username"]
            f.userEmail = email
            f.userPassword = request.POST["userpassword"]
            f.userMobile = request.POST["usermobile"]
            f.userAge = request.POST["userage"]
            f.userAddress = request.POST["useraddress"]
            f.userCity = request.POST["usercity"]
            f.userState = request.POST["userstate"]
            f.isActive = True
            f.isAvailable=True
            f.isQueue=False
            f.userToken=""
            f.userConfirmationlink=""
            f.userOtp=otp
            f.userOtptime=time
            f.roleId_id = 1

            f.save()
        else:
            return HttpResponse("error")

        email_send.e_mail()

        return render(request, "signup.html", {'success': True})

    return render(request, "signup.html")



def verify(request):
    emailid=request.GET['useremail']
    token=request.GET['token']
