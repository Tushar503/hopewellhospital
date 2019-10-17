from django.shortcuts import render,HttpResponse,redirect
from miscellaneous import email_send,myconstants
from staffapp.forms import StaffForm
from staffapp.models import Staff
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.hashers import make_password,check_password
from Authorize import authcheck

def addstaff(request):
    if request.method == "POST":

        email = request.POST['useremail']
        form = StaffForm(request.POST)
        email = request.POST['useremail']
        #confirmationlink = "http://127.0.0.1:8000/verified/?email=" + email + "&token=" + otp
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
        f.isAvailable = True
        f.isQueue = False
        #f.userToken = otp
        #f.userConfirmationlink = confirmationlink
        #f.userOtp = otp
        #f.userOtptime = time
        f.depttId_id = 1

        f.save()

        #email_send.e_mail("signuplink", email, confirmationlink)

        return render(request, "addstaff.html", {'success': True})

    return render(request, "addstaff.html")

