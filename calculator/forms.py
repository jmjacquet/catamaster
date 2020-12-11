# -*- coding: utf-8 -*-
from django import forms
from .models import *
from django.forms import ModelForm
import datetime
from .utilidades import *
from django.contrib import admin
from django.forms.widgets import TextInput,NumberInput
from django.contrib.auth.models import User   # fill in custom user info then save it 
from django.contrib.auth.forms import UserCreationForm   
from django.utils.safestring import mark_safe

class HorizRadioRenderer(forms.RadioSelect.renderer):
    def render(self):
            """Outputs radios"""
            return mark_safe(u'\n'.join([u'%s\n' % w for w in self]))

class PacienteForm(ModelForm):	
   HM_OTRAS = forms.CharField(label='Otras',widget=forms.Textarea(attrs={ 'rows': 6}),required = False)
   ALERGIAS = forms.CharField(label='Alergias',widget=forms.Textarea(attrs={ 'rows': 3}),required = False)

   class Meta:
      model = Paciente
      exclude = ['id_paciente']

   def __init__(self, *args, **kwargs):
        super(PacienteForm, self).__init__(*args, **kwargs)
        for field_name in self.fields:
            field = self.fields.get(field_name)  
            if field:
                if type(field.widget) in (forms.TextInput, forms.DateInput):
                    field.widget = forms.TextInput(attrs={'placeholder': field.help_text})



class ExamenForm(ModelForm):
    OTRAS_GOTAS = forms.CharField(label='Otras Gotas',widget=forms.Textarea(attrs={ 'rows': 3}),required = False)
    OBSERVACIONES = forms.CharField(label='Observaciones',widget=forms.Textarea(attrs={ 'rows': 11}),required = False)
    aceptoTyC = forms.BooleanField(label='Acepto Términos y Condiciones',required=True)
    class Meta:
      model = Examen
      exclude = ['paciente','user']

    def __init__(self, *args, **kwargs):
        super(ExamenForm, self).__init__(*args, **kwargs)
        for field_name in self.fields:
            field = self.fields.get(field_name)  
            if field:
                if type(field.widget) in (forms.TextInput, forms.DateInput,forms.NumberInput):
                    field.widget = forms.TextInput(attrs={'placeholder': field.help_text})





# class RegistracionForm(UserCreationForm):
#     class Meta:
#         model = User
#         fields = ('username', 'email', 'password1', 'password2')        

class UserForm(UserCreationForm):
    username = forms.CharField(label=u'Usuario',required = True,max_length=10)
    password1 = forms.CharField(widget=forms.PasswordInput(render_value = True),max_length=10,label='Contraseña') 
    password2 = forms.CharField(widget=forms.PasswordInput(render_value = True),max_length=10,label='Confirmar Contraseña') 
    class Meta:
        model = User
        fields = ('username', 'password1', 'password2')

class UserProfileForm(forms.ModelForm):
    email = forms.EmailField(label=u'E-Mail',required = True,max_length=50)
    nrodocu = forms.DecimalField(label=u'Nº Documento',widget=forms.NumberInput(),required = False)    
  
    class Meta:
        model = UserProfile
        fields = ('email','nombre','matricula','nrodocu','localidad','pais')   

