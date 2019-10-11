from django.shortcuts import render,HttpResponse,redirect

# Create your views here.
def manager(request):
    return render(request,"manager.html")

