import smtplib #simple  mail transfer protocol


from email.mime.multipart import MIMEMultipart##for attacjhment

from email.mime.text import MIMEText#it covertd the attachment to string ...kuki sendmail fxn k ander only string me pass hota hai like binary form me
def sendmail():

    msg=MIMEMultipart()

    msg['From']= 'sainimanraj01@gmail.com'
    msg['To']='tusharsaini503@gmail.com'
    msg['Subject'] = "hello frnd chai pilo"

    body="Welcome to Hopewell Hospital"
    msg.attach(MIMEText(body,"plain"))
    try:

       server =smtplib.SMTP("smtp.gmail.com",587)#google server se connect krn ek lie yhi address,587 port no. mailing ka...
       #print(server)
       server.starttls()#it starts the transferlayer security for snnding mail

       server.login('sainimanraj01@gmail.com','r7015800')
       text = msg.as_string()
       server.sendmail('sainimanraj01@gmail.com','tusharsaini503@gmail.com',text)
       print("email sent")
       return True

    except smtplib.SMTPException:
        print("email is not send")
        return False


        server.quit()
sendmail()






