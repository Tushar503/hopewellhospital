import datetime as dt
def data():
 dati = dt.date.today()
 dater=dati.strftime("%Y-%m-%d")
 print(dater)
 print(type(dater))
data()