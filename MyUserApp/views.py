from django.shortcuts import render,HttpResponse,redirect
from miscellaneous import email_send,myconstants
from MyUserApp.forms import UserSignupForm
from MyUserApp.models import UserSignup
from django.contrib.auth.hashers import make_password,check_password
from Authorize import authcheck



# Create your views here.
def home(request):
    return render(request,"index.html")

def usersignup(request):
    if request.method == "POST":
        email = request.POST['useremail']
        form = UserSignupForm(request.POST)
        otp, time = email_send.OtpSend()
        confirmationlink = "http://127.0.0.1:8000/verifyuser/?email=" + email + "&token=" + otp
        f = form.save(commit=False)
        f.userFullName = request.POST["username"]
        f.userEmail = request.POST["useremail"]
        f.userPassword = make_password(request.POST["userpassword"])
        f.userMobile = request.POST["usermobile"]
        f.userAge = request.POST["userage"]
        f.userAddress = request.POST["useraddress"]
        f.userCity = request.POST["usercity"]
        f.userState = request.POST["userstate"]
        f.isActive = True
        f.isAvailable=True
        f.isQueue=False
        f.userToken=otp
        f.userConfirmationlink=confirmationlink
        f.userOtp=otp
        f.userOtptime=time
        f.roleId_id = 1

        f.save()


        email_send.e_mail("the",email,confirmationlink)

        return render(request, "signup.html", {'success': True})

    return render(request, "signup.html")
def verify(request):
    email = request.GET['email']
    token = request.GET['token']
    try:
        data = UserSignup.objects.get(userEmail=email)
        dbtoken = data.userToken
        if (dbtoken == token):
            updateuser = UserSignup(
                userEmail=email,
                userToken='',
                userConfirmationlink='',
                isVerified=True
            )
            updateuser.save(update_fields=["userToken", "userConfirmationlink", "isVerified"])
            return render(request, "verified.html")
        else:
            return render(request, "verified1.html")
    except:
        return render(request, "verified2.html")
def damy(request):
    try:
        authdata=authcheck.authentication(request.session['Authentication'],request.session['roleid'],myconstants.MANAGER)
        if(authdata==True):

            return render(request, "notlogin.html")

        else:
            authinfo,message=authdata
            if(message=="Invalid_user"):
                return redirect("/unauthorize_ccess/")
            elif(message=="Not_Login"):
                return redirect("/notlogin/")
    except:
        return redirect("/notlogin/")






def login(request):
    if(request.method=="POST"):
        email=request.POST['useremail']
        password=request.POST['userpassword']
        try:
            data=UserSignup.objects.get(userEmail=email)
            dbpassword=data.userPassword
            auth=check_password(password,dbpassword)
            if(auth==True):
                request.session['Authentication']=True
                request.session['useremail'] = email
                request.session['roleid']=data.roleId_id
                return redirect("/damy/")
            else:
                return render(request,"login.html",{'wrongpw':True})
        except:
            return render(request,"login.html",{'wrongem':True})
    return render(request,"login.html")

