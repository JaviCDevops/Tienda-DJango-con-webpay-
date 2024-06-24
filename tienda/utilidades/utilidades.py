from datetime import datetime, date, timedelta

from django.conf import settings
import os
from os import remove
from urllib.parse import urlparse, parse_qs
from django.core.paginator import Paginator
from django.template import Context, Template
import jwt
import time
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from smtplib import SMTPException


def getToken(json):
    token= jwt.encode(json, settings.SECRET_KEY, algorithm='HS256')
    return token


def traducirToken(token):
    return jwt.decode(token, settings.SECRET_KEY, algorithms=['HS256'])


def sendMail(html, asunto, para):
    msg = MIMEMultipart('alternative')
    msg['Subject'] = asunto
    msg['From'] = settings.MAIL_SALIDA
    msg['To'] = para

    msg.attach(MIMEText(html, 'html'))
    try:
        server = smtplib.SMTP(settings.SERVER_SMTP, settings.PUERTO_SMTP)
        server.starttls()  # Inicia TLS si es necesario
        server.login(settings.MAIL_SALIDA, settings.PASSWORD_MAIL_SALIDA)
        server.sendmail(settings.MAIL_SALIDA, para, msg.as_string())
        server.quit()
    except smtplib.SMTPAuthenticationError as e:
        print(f"Error de autenticación: {e}")
    except smtplib.SMTPConnectError as e:
        print(f"Error de conexión: {e}")
    except smtplib.SMTPRecipientsRefused as e:
        print(f"Destinatarios rechazados: {e}")
    except smtplib.SMTPSenderRefused as e:
        print(f"Remitente rechazado: {e}")
    except smtplib.SMTPDataError as e:
        print(f"Error de datos: {e}")
    except smtplib.SMTPException as e:
        print(f"Ocurrió un error al enviar el correo: {e}")
    except Exception as e:
        print(f"Un error inesperado ocurrió: {e}")


def getExtension(file):
    extension = os.path.splitext(str(file))[1]
    if extension == ".png":
        return True
    elif extension == ".jpg":
        return True
    elif extension == ".jpeg":
        return True
    elif extension == ".JPG":
        return True
    elif extension == ".PNG":
        return True
    elif extension == ".JPEG":
        return True
    else:
        return False


def paginacion(total, request):
    paginator = Paginator(total, settings.TOTAL_PAGINAS)
    page = request.GET.get('page')
    datos = paginator.get_page(page)
    numeros=[]
    if len(datos)>=settings.TOTAL_PAGINAS:
        for ultima in range(1, datos.paginator.num_pages):
            numeros.append(ultima)
        numeros.append(ultima+1)
    return [datos, numeros, page]


def numberFormat(numero):
    if numero == None:
        return 0
    else:
        return "{:,}".format(numero).replace(",",".")