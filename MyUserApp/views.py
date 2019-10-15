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
        confirmationlink = "http://127.0.0.1:8000/verified/?email=" + email + "&token=" + otp
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
        f.roleId_id = 2

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

            return render(request, "damy.html")

        else:
            authinfo,message=authdata
            if(message=="Invalid_user"):
                return redirect("/unauthorised_access/")
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
                if data.roleId_id ==1:
                  return render(request, "manager.html")
                elif data.roleId_id==2:
                    return render(request, "manager.html")



                #return redirect("/damy/")
                #return render(request, "manager.html")
            else:
                return render(request,"login.html",{'wrongpw':True})
        except:
            return render(request,"login.html",{'wrongem':True})
    return render(request,"login.html")

def notlogin(request):
    return render(request, "notlogin.html")

def unauthorised_access(request):
    return render(request,"unauthorize_access.html")
def logout(request):
    try:
        request.session.pop("Authentication")
        request.session.pop("emailid")
        request.session.pop("roleid")
        return redirect("/login/")
    except:
        return redirect("/login/")


def changepassword(request):
    if (request.method == "POST"):
        currentpas = request.POST['currentpass']
        confirmpas = request.POST['confirmpass']
        newpas = make_password(request.POST['newpass'])
        try:

            email=request.session['useremail']
            email_id = UserSignup.objects.get(userEmail=email)
            oldpas = email_id.userPassword
            auth = check_password(currentpas,oldpas)
            auth1 = check_password(confirmpas,newpas)
            if auth==True and auth1==True:

                 updated = UserSignup(userEmail=email_id.userEmail,userPassword=newpas)
                 updated.save(update_fields=["userPassword"])
                 return HttpResponse("changed successfully")
            else:
                return render(request,'manager.html',{'old':True})
        except:
            return HttpResponse("not changed successfully")
    return render(request,'changepassword.html')


def showprofile(request):
    email = request.session['useremail']
    data = UserSignup.objects.get(userEmail=email)
    # if request.method=="POST":
    #     emailid=request.POST["email"]
    #     vname=request.POST["name"]
    #     vmobile=request.POST["mobile"]
    #     vage=request.POST["age"]
    #     vaddress=request.POST["address"]
    #     vcity=request.POST["city"]
    #     vstate=request.POST["state"]
    #     updatedata=UserSignup(userEmail=emailid,userFullName=vname,userMobile=vmobile,userAge=vage,userAddress=vaddress,userCity=vcity,userState=vstate)
    #     updatedata.save(
    #         update_fields=["userFullName",
    #                        "userMobile",
    #                        "userAge",
    #                        "userAddress",
    #                        "userCity",
    #                        "userState"
    #                        ])
    return render(request,"viewprofile.html",{ 'taru':True, 'd1': data})
    # return render(request, "viewprofile.html", {'d1': data})

def updateprofile(request):
    email = request.session['useremail']
    data = UserSignup.objects.get(userEmail=email)
    if request.method == "POST":
        emailid = request.POST["email"]
        vname = request.POST["name"]
        vmobile = request.POST["mobile"]
        vage = request.POST["age"]
        vaddress = request.POST["address"]
        vcity = request.POST["city"]
        vstate = request.POST["state"]
        updatedata = UserSignup(userEmail=emailid, userFullName=vname, userMobile=vmobile, userAge=vage,
                                userAddress=vaddress, userCity=vcity, userState=vstate)
        updatedata.save(
            update_fields=["userFullName",
                           "userMobile",
                           "userAge",
                           "userAddress",
                           "userCity",
                           "userState"
                           ])
        return render(request, "updateprofile.html", {'tarun': True, 'd2': data})
    return render(request, "updateprofile.html", {'d2': data})


