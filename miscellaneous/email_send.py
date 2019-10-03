import smtplib #simple  mail transfer protocol


from email.mime.multipart import MIMEMultipart##for attacjhment

from email.mime.text import MIMEText#it covertd the attachment to string ...kuki sendmail fxn k ander only string me pass hota hai like binary form me
def sendmail(reciever,subject,message):

    msg=MIMEMultipart()

    msg['From']= 'vishul.chauahna222@gmail.com'
    msg['To']='asustruelife@gmail.com'
    msg['Subject'] = "hello "

    body="Welcome to Hopewell Hospital"
    msg.attach(MIMEText(body,"plain"))


    server =smtplib.SMTP("smtp.gmail.com",587)#google server se connect krn ek lie yhi address,587 port no. mailing ka...
    #print(server)
    server.starttls()#it starts the transferlayer security for snnding mail

    server.login('vishul.chauhan222@gmail.com','desire626')
    text = msg.as_string()
    server.sendmail('vishul.chauhan222@gmail.com','vishul.chauhan000@gmail.com',text)
    server.quit()

    print("email sent")



sendmail()


