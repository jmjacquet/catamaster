from django.contrib import admin
from icimino.settings import *
from .models import *

class SalidasAdmin(admin.ModelAdmin):
    list_display = ('codigo','tipo', 'encabezado','contenido')
    list_display_links = ('codigo', )
    search_fields = ['encabezado']

class SalidasFormAdmin(admin.ModelAdmin):
    list_display = ('codigo','tipo', 'encabezado','contenido')
    list_display_links = ('codigo', )
    search_fields = ['encabezado']
    class Media:
        js = (STATIC_URL+'/js/nicEdit.js', STATIC_URL+'/js/textarea_content.js')

admin.site.register(Salidas, SalidasFormAdmin)
#admin.site.register(Salidas,SalidasAdmin)
admin.site.register(UserProfile)
admin.site.register(Examen)

