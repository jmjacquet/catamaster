# -*- coding: utf-8 -*-
from django.conf.urls import *
from django.conf import settings
import os
from .views import *


urlpatterns = patterns('calculator.views',	
    url(r'^$', PrincipalView.as_view(),name="principal"),
    url(r'^examen/$', formularioExamen,name="nuevo_examen"),
    url(r'^listado/$', ListadoTablasView.as_view(),name="listados"),
    url(r'^resultado/(?P<ide>[^/]+)/$', verResultados,name="ver_resultados"),
    url(r'^todos/(?P<ide>[^/]+)/$', verTodos,name="ver_todos"),
    url(r'^editar/(?P<ide>[^/]+)/$', editarExamen,name="editar_examen"),    
    url(r'^verDetalle/(?P<ide>[^/]+)/$', verDetalle,name="ver_examen"),    
    url(r'^imprimirDetalle/(?P<ide>[^/]+)/$', imprimirDetalle,name="imprimir_examen"),    
    )