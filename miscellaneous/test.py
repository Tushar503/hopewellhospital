import datetime as dt
from staffapp.models import Appointment
def data():
 dati = dt.date.today()
 dater=dati.strftime("%Y-%m-%d")
 print(dater)
 print(type(dater))
data()
def role():
  dept = Appointment.objects.get(DoctorEmail_id="rajanynrsaini503@gmail.com")
  print(dept.userEmail)
role()