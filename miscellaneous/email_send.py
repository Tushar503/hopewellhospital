import smtplib #simple  mail transfer protocol


from email.mime.multipart import MIMEMultipart##for attacjhment

from email.mime.text import MIMEText#it covertd the attachment to string ...kuki sendmail fxn k ander only string me pass hota hai like binary form me

import random,string
import datetime as dt

def e_mail(subject,receiver,mail):

    msg=MIMEMultipart()

    msg['From']= 'hospitalh525@gmail.com'
    msg['To']='email'
    msg['Subject'] = "hello frnd chai pilo"
    msg.attach(MIMEText(mail,"plain"))
    server =smtplib.SMTP("smtp.gmail.com",587)#google server se connect krn ek lie yhi address,587 port no. mailing ka...
    #print(server)
    server.starttls()#it starts the transferlayer security for snnding mail
    try:

       server.login('hospitalh525@gmail.com','desire626')
       text = msg.as_string()
       server.sendmail(msg['From'],msg["To"],text)
       print("email sent")
       server.quit()
       return True

    except smtplib.SMTPException:
        print("email is not send")

        return False






def OtpSend(length=2):
    letter=string.ascii_letters
    a=random.randint(10000,100000)
    otp=str(a).join(random.choice(letter)for i in range(length))
    x=str(dt.datetime.now() )
    return(otp,x)





