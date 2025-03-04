from django.shortcuts import render
from django.http import Http404, HttpResponseRedirect, HttpResponse
from django.contrib import messages
from django.contrib.auth.models import User
from home.models import *
from .forms import *
from django.contrib.auth import authenticate, login, logout
from datetime import datetime, date, timedelta
from utilidades import utilidades
import time
from django.conf import settings
from django.contrib.auth.hashers import make_password
from slugify import slugify

def acceso_login(request):
    if request.user.is_authenticated:
        return HttpResponseRedirect('/')
    form = Formulario_Login(request.POST or None)
    if request.method =='POST':
        if form.is_valid():
            correo = request.POST['correo']
            password = request.POST['password']
            user = authenticate(request, username=correo, password=password)
            if user is not None:
                login(request, user)
                usersMetadata = UsersMetadata.objects.filter(user_id=request.user.id).get()
                request.session['users_metadata_id'] =  usersMetadata.id
                return HttpResponseRedirect('/')
            else:
                messages.add_message(request, messages.WARNING, f'Los datos ingresados no son correctos, por favor vuelva a intentar.')
                return HttpResponseRedirect('/acceso/login')
    return render(request, 'acceso/login.html', {'form': form})

def acceso_registro(request):
    if request.user.is_authenticated:
        return HttpResponseRedirect('/')
    form = Formulario_Registro(request.POST or None)
    if request.method =='POST':
        if form.is_valid():
            existe=User.objects.filter(username=request.POST['correo']).count()
            if existe !=0:
                mensaje = f"El E-Mail ingresado ya está siendo usado por otro usuario, por favor intente con otro."
                messages.add_message(request, messages.WARNING, mensaje)
                return HttpResponseRedirect('/acceso/registro')
            nombre=f"{request.POST['nombre']}-{request.POST['apellido']}"
            u=User.objects.create_user(username = request.POST['correo'], password = request.POST['password'], email = request.POST['correo'], first_name=request.POST['nombre'], last_name=request.POST['apellido'], is_active=1)
            UsersMetadata.objects.create(correo=request.POST['correo'], telefono='', direccion='', estado_id=2, pais_id=1, perfiles_id=1, user_id=u.id, genero_id=3, slug = slugify(nombre))
            mensaje = f"Se creó el registro exitosamente."
            messages.add_message(request, messages.SUCCESS, mensaje)
            return HttpResponseRedirect('/acceso/registro')
        else:
            mensaje = f"No fué posible crear el registro, por favor vuelva a intentarlo"
            messages.add_message(request, messages.WARNING, mensaje)
            return HttpResponseRedirect('/acceso/registro')
    return render(request, 'acceso/registro.html', {'form': form})

def acceso_salir(request):
    logout(request)
    try:
        del request.session['users_metadata_id']
    except KeyError:
        pass
    messages.add_message(request, messages.WARNING, f'Se cerró la sesión exitosamente.')
    return HttpResponseRedirect('/acceso/login')