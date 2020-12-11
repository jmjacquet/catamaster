# -*- coding: utf-8 -*-

from django.contrib.auth import login as django_login, authenticate, logout as django_logout
from django.shortcuts import *
from settings import *
from django.core.urlresolvers import reverse
from django.contrib import messages
from django.db.models import Q
from django.template.defaulttags import register

from django.contrib.auth.forms import UserCreationForm
from django.core.context_processors import csrf
@register.filter
def get_item(dictionary, key):
    return dictionary.get(key)


def login(request):
    error = None
    if request.user.is_authenticated():
       return HttpResponseRedirect('/listado/') 
    if request.method == 'POST':
        username=request.POST.get('username')
        password=request.POST.get('password')
        user = authenticate(username=username,password=password)
        
        if user is not None:
          if user.is_active:
            django_login(request, user)            
            return HttpResponseRedirect(ROOT_URL)
          else:           
           error = u"Ya está logueado."
        else: 
           error = "Verifique los datos ingresados."
    if error:
      messages.add_message(request, messages.ERROR,u'%s' % (error))
      
   
    return render_to_response('index.html',{'msj':messages}, context_instance=RequestContext(request))

def logout(request):
    request.session.clear()
    django_logout(request)
    return HttpResponseRedirect(ROOT_URL)


from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.http import HttpResponseRedirect
from django.shortcuts import render
 

from calculator.forms import UserForm, UserProfileForm

def registrarse(request):
    registracion = True
    error = None
    if request.method == 'POST':
        user_form = UserForm(data=request.POST)
        profile_form = UserProfileForm(data=request.POST)
        if user_form.is_valid() and profile_form.is_valid():
            user = user_form.save()            
            user.save()
            profile = profile_form.save(commit=False)
            profile.user = user
            if not profile.nombre:
                profile.nombre=user.username 
            profile.save()
            registracion = False
        else:
            error = user_form.errors
    else:
        user_form = UserForm()
        profile_form = UserProfileForm()
    if error:
      messages.add_message(request, messages.ERROR,u'%s' % (error))

    return render(request,
            'registrarse.html',
            {'user_form': user_form, 'profile_form': profile_form,'msj':messages, 'registracion': registracion} )

def volverHome(request):    
    if not request.user.is_authenticated():
      return HttpResponseRedirect(ROOT_URL)
    else:
      return HttpResponseRedirect('/listado/')




