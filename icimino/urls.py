from django.conf.urls import patterns, include, url
# -*- coding: utf-8 -*-
from django.conf import settings
import os
from django.conf.urls.static import static
from django.views.generic import RedirectView,TemplateView
from django.contrib import admin
from .views import login,logout,volverHome,registrarse
admin.autodiscover()
from django.views.generic.edit import CreateView
from django.contrib.auth.forms import UserCreationForm
urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'icimino.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
	
    
    url(r'^', include('calculator.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^login/$', login),
    url(r'^logout/$', logout),
    url(r'^registrarse/$',registrarse,name="registrarse" ),
)+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


urlpatterns += patterns('',url(r'^staticfiles/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.STATIC_URL}),
    )

handler500 = volverHome
handler404 = volverHome