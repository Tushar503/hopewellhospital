from django.shortcuts import render,HttpResponse,redirect
from miscellaneous import email_send,myconstants
from staffapp.forms import StaffForm
from staffapp.models import Staff

from MyUserApp.forms import UserSignupForm
from MyUserApp.models import UserSignup
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.hashers import make_password,check_password
from managerapp.models import Loginrecords
from managerapp.forms import LoginrecordsForm
from Authorize import authcheck
import datetime as dt
import uuid,socket



# Create your views here.
def home(request):
    return render(request,"index.html")

def usersignup(request):
    if request.method == "POST":
        email = request.POST['useremail']
        form = UserSignupForm(request.POST)
        email = request.POST['useremail']
        otp, time = email_send.OtpSend()

        confirmationlink = "http://127.0.0.1:8000/verified/?email=" + email + "&token=" + otp
        image = None
        try:
             if request.FILES:
               my_file = request.FILES["image"]
               fs = FileSystemStorage()
               file_name = fs.save(my_file.name,my_file)
               image = fs.url(file_name)
               image = my_file.name
               #print(image)
        except:
            pass
        f = form.save(commit=False)
        f.userFullName = request.POST["username"]
        f.userEmail = request.POST["useremail"]
        f.userPassword = make_password(request.POST["userpassword"])
        f.userMobile = request.POST["usermobile"]
        f.userAge = request.POST["userage"]
        f.userAddress = request.POST["useraddress"]
        f.userCity = request.POST["usercity"]
        f.userState = request.POST["userstate"]
        f.userImage = image
        f.isActive = True
        f.isAvailable=True
        f.isQueue=False
        f.userToken=otp
        f.userConfirmationlink=confirmationlink
        f.userOtp=otp
        f.userOtptime=time
        f.roleId_id= 1

        f.save()


        email_send.e_mail("signuplink",email,confirmationlink)

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







def login(request):
    if(request.method=="POST"):
        email=request.POST['useremail']
        password=request.POST['userpassword']
        try:
            usertype=request.POST['role']
            data=""
            if(usertype=="1" or usertype =="3"):
                data=UserSignup.objects.get(userEmail=email)
            elif (usertype == "2" or usertype == "4"):
                data = Staff.objects.get(userEmail=email)
            else:
                return redirect("/login/",{'wrongfi':True})
            dbpassword=data.userPassword
            auth=check_password(password,dbpassword)
            if(auth==True):
                print("auth true")
                request.session['Authentication']=True
                request.session['useremail'] = email

                if(usertype=="1" or usertype =="3"):
                   request.session['roleid']=int(data.roleId_id)
                elif (usertype == "2" or usertype == "4"):
                    print("usertype ",usertype)
                    request.session['roleid'] = int(data.roleId)



                form=LoginrecordsForm(request.POST)
                f = form.save(commit=False)
                f.userId = email
                f.loginTime= dt.datetime.now()
                f.mac_address = hex(uuid.getnode())
                host_name=socket.gethostname()
                f.ip_address=socket.gethostbyname(host_name)
                f.save()



                print("roleid= ",type(request.session['roleid']))
                if request.session['roleid'] == 1:
                    return redirect("/manager/")
                elif request.session['roleid']== 3:
                    return redirect("/user/patient/")
                elif request.session['roleid']== 2:
                    return redirect("/doctorsapp/doctor/")
                elif request.session['roleid']== 4:
                    return redirect("/staffapp/")


                #return render(request, "manager.html")
            else:
                return render(request,"login.html",{'wrongpw':True})
        except:
             return render(request, "login.html",{'wrongem':True})
    return render(request,"login.html")

def notlogin(request):
    return render(request, "notlogin.html")

def unauthorised_access(request):
    return render(request,"unauthorize_access.html")

def logout(request):
    email=request.session['useremail']
    data=Loginrecords.objects.filter(userEmail=email).order_by("-loginId")[0:1]
    idd=0
    for i in data:
        idd=i.loginId
        break
    try:
        request.session.pop("Authentication")
        request.session.pop("useremail")
        request.session.pop("roleid")
        logouttime=str(dt.datetime.now())
        if idd > 0 :
            updateData=Loginrecords(loginId=idd,logoutTime=logouttime)
            updateData.save(update_fields=["logoutTime"])
        else:
            pass
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
                return redirect("/manager/",{'old':True})
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
        email = request.POST['email']
        form = UserSignupForm(request.POST)
        otp, time = email_send.OtpSend()
        confirmationlink = "your profile is changed succesfully"
        try:
            if request.FILES["image"]:
                my_file = request.FILES["image"]
                fs = FileSystemStorage()
                file_name = fs.save(my_file.name, my_file)
                photo = fs.url(file_name)
                photo = my_file.name
        except:
            pass

        emailid = request.POST["email"]
        vname = request.POST["name"]
        vmobile = request.POST["mobile"]
        vage = request.POST["age"]
        vaddress = request.POST["address"]
        vcity = request.POST["city"]
        vstate = request.POST["state"]
        vimage = photo
        updatedata = UserSignup(userEmail=emailid, userFullName=vname, userMobile=vmobile, userAge=vage,
                                userAddress=vaddress, userCity=vcity, userState=vstate,userImage=vimage)
        updatedata.save(
            update_fields=["userFullName",
                           "userMobile",
                           "userAge",
                           "userAddress",
                           "userCity",
                           "userState",
                           "userImage"

                           ])
        email_send.e_mail("profilechanged", email, confirmationlink)
        return HttpResponse( "Profile update", {'tarun':True, 'd2': data})
    return render(request, "updateprofile.html", {'tarun':True,'d2': data})

def contactus(request):
    return render(request, 'contactus.html')
def patient(request):
    return render(request,"patient.html")
