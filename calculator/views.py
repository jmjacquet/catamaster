# -*- coding: utf-8 -*-
from django.template import RequestContext,Context
from django.shortcuts import render, redirect, get_object_or_404,render_to_response
from .models import Paciente,Examen,Salidas
from django.views.generic import TemplateView,ListView,CreateView,UpdateView,FormView,DetailView
from django.conf import settings
from .forms import ExamenForm,PacienteForm
from django.core.urlresolvers import reverse
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
import logging
from django.shortcuts import *
from django.contrib import messages
logger = logging.getLogger(__name__)
from django.utils import timezone


class ListadoTablasView(ListView):
    template_name = 'listado.html'
    context_object_name = 'listado'    
    success_url = '/'

    @method_decorator(login_required)
    def dispatch(self, *args, **kwargs):        
        return super(ListadoTablasView, self).dispatch(*args, **kwargs)

    def get_context_data(self, **kwargs):
        context = super(ListadoTablasView, self).get_context_data(**kwargs)
        usr= self.request.user     
        try:
            context['usuario'] = usr                        
        except:
            context['usuario'] = None         
        return context

    def get_queryset(self):
        # Examenes del Usr        
        usr= self.request.user
        try:
            e = Examen.objects.filter(user=usr)
        except:
            e = None
        return e

class PrincipalView(TemplateView):
    template_name = 'index.html'
    
    @method_decorator(login_required)
    def dispatch(self, *args, **kwargs):
        if self.request.user.is_authenticated():
            return HttpResponseRedirect('/listado/')         
        return super(PrincipalView, self).dispatch(*args, **kwargs)
    

@login_required
def formularioExamen(request):
    if request.POST:
        # Load up our two forms again using the prefix keyword argument.
        form = ExamenForm(request.POST, prefix="ex")
        
        sub_form = PacienteForm(request.POST, prefix="pers")

        # Ensure both forms are valid before continuing on
        if form.is_valid() and sub_form.is_valid():
            examen = form.save(commit=False)
            examen.paciente = sub_form.save()
            examen.user = request.user
            examen.save()
            return redirect('/listado')
        else:
            messages.add_message(request, messages.ERROR,u'Verifique que los campos estén cargados correctamente!')
    else:
        form = ExamenForm(prefix="ex")
        sub_form = PacienteForm(prefix="pers")

    return render_to_response('examen_form.html', {'form': form,'sub_form': sub_form,},context_instance=RequestContext(request))

@login_required
def editarExamen(request,ide):
    e = get_object_or_404(Examen, pk=ide)
    form = ExamenForm(request.POST or None, instance=e)        
    sub_form = PacienteForm(request.POST or None, instance=e.paciente)

        # Ensure both forms are valid before continuing on
    if form.is_valid() and sub_form.is_valid():            
        sub_form.save()
        form.save()
        return redirect('/listado')
    else:
            messages.add_message(request, messages.ERROR,u'Verifique que los campos estén cargados correctamente!')

    return render_to_response('examen_form.html', {'form': form,'sub_form': sub_form,},context_instance=RequestContext(request))


@login_required
def verResultados(request,ide):
        e = Examen.objects.get(id_examen=ide)
        salida = []
        salidas = Salidas.objects.all()
    
        if not e.MEDICAM_APTO:
            try:
               s = salidas.filter(codigo=1)[0]
            except IndexError:
               s = None
            if s:
                salida.append(s)
    
        if e.HO_CX_REFRACTIVA==1:
            try:
                s = salidas.filter(codigo=8)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)
            #salida.append('ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc).')
        if e.HO_CX_REFRACTIVA==2:
            try:
                s = salidas.filter(codigo=9)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)
        if e.HO_AMBL or e.HO_DIPL:                
            try:
                s = salidas.filter(codigo=10)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)
            #salida.append('REALIZAR CONSENTIMIENTO INFORMADO PERSONALIZADO, registrando dicha afección.')
        
        if e.TRATAM_GOTAS == 1:
            try:
                s = salidas.filter(codigo=11)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)
            #salida.append('SUSPENDER las gotas luego de cirugía. Cambio por betabloqueantes (si el paciente no presenta contraindicaciones para su uso).')

        if e.EO_PROM:
            try:
                s = salidas.filter(codigo=5)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)            
            #salida.append('Realizar anestesia local o bloqueo parabulbar (Prominencia frontal y/o enoftalmos).')

        if (e.EO_IRID > 0)or(e.EO_SINEQUIAS>0)or(e.EO_PSEUDO)or(e.EO_DILATP>0):
            try:
                s = salidas.filter(codigo=6)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)

        if e.EO_ENDID:
            try:
                s = salidas.filter(codigo=7)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)

        if e.EO_BLEFA:
            try:
                s = salidas.filter(codigo=12)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)
        
        if e.EO_OPACC==1:
            try:
                s = salidas.filter(codigo=13)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)

        if e.EO_OPACC==2:
            try:
                s = salidas.filter(codigo=76)[0]
            except IndexError:
                s = None
            if s:
                salida.append(s)

        if (e.EO_GUTATTA > 0):
            if(e.REC_ENDO == 1): 
                try:
                    s = salidas.filter(codigo=14)[0]
                except IndexError:
                    s = None
                if s:
                    salida.append(s)
            elif(e.REC_ENDO == 2):
                try:
                    s = salidas.filter(codigo=16)[0]
                except IndexError:
                    s = None
                if s:
                    salida.append(s)
            if(e.PAQ <= 600):
                try:
                    s = salidas.filter(codigo=16)[0]
                except IndexError:
                    s = None
                if s:
                    salida.append(s)
            elif(e.PAQ > 600): 
                try:
                    s = salidas.filter(codigo=15)[0]
                except IndexError:
                    s = None
                if s:
                    salida.append(s)
    
        if (e.EO_AVP == 150)or(e.EO_AVP == 300) :
            try:
                s = salidas.filter(codigo=10)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        
        if (e.EO_RPUPIL > 0):
            try:
                s = salidas.filter(codigo=18)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.PCA < 3)and(e.PIO>20)and():
            try:
                s = salidas.filter(codigo=47)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_CAPSULA == 1):
            try:
                s = salidas.filter(codigo=20)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        elif (e.EO_CAPSULA == 2):
            s = salidas.filter(codigo=21)[0]
            if s:
                salida.append(s)

        if (e.EO_SINEQUIAS>0):
            try:
                s = salidas.filter(codigo=22)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if ((e.CAT_N>0)and(e.CAT_N<4)and(e.CAT_P==0)and(e.CAT_C==0)):
            try:
                s = salidas.filter(codigo=23)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        elif ((e.CAT_N>3)and(e.CAT_P==0)and(e.CAT_C==0)):
            try:
                s = salidas.filter(codigo=24)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        elif ((e.CAT_N==0)and(e.CAT_P==0)and(e.CAT_C>0)and(e.CAT_C<6)):
            try:
                s = salidas.filter(codigo=23)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        elif ((e.CAT_N>3)and(e.CAT_P==0)and(e.CAT_C>0)and(e.CAT_C<6)):
            try:
                s = salidas.filter(codigo=24)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        elif ((e.CAT_N==0)and(e.CAT_C==0)and(e.CAT_P>0)and(e.CAT_P<6)):
            try:
                s = salidas.filter(codigo=23)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        elif ((e.CAT_N>3)and(e.CAT_C==0)and(e.CAT_P>0)and(e.CAT_P<6)):
            try:
                s = salidas.filter(codigo=24)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_CAT_HM:
            try:
                s = salidas.filter(codigo=25)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_CAT_B or e.EO_CAT_R or e.EO_CAT_N:
            try:
                s = salidas.filter(codigo=26)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
            try:
                s = salidas.filter(codigo=24)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_CAT_TX and (e.EO_ZONULAS==1):
            try:
                s = salidas.filter(codigo=27)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_CAT_TX and (e.EO_ZONULAS==2):
            try:
                s = salidas.filter(codigo=28)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_CAT_TX and (e.EO_ZONULAS==3):
            try:
                s = salidas.filter(codigo=29)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_CAT_TX and (e.EO_ZONULAS==4):
            try:
                s = salidas.filter(codigo=30)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_CAT_PP:
            try:
                s = salidas.filter(codigo=31)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_PSEUDO and (e.EO_ZONULAS==1):
            try:
                s = salidas.filter(codigo=32)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_PSEUDO and (e.EO_ZONULAS==2):
            try:
                s = salidas.filter(codigo=33)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_PSEUDO and (e.EO_ZONULAS==3):
            try:
                s = salidas.filter(codigo=34)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_PSEUDO and (e.EO_ZONULAS==4):
            try:
                s = salidas.filter(codigo=35)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_VITREO==5:
            try:
                s = salidas.filter(codigo=36)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_RETINA==1) and (e.EO_RET_DIAB):
            try:
                s = salidas.filter(codigo=37)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_RETINA==1)and(e.EO_PAP_GLAU)and(e.PIO > 22)and(e.PCA<=2)and(e.RP_E>=1.00):
            try:
                s = salidas.filter(codigo=38)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_RETINA==1)and(e.PIO > 22)and(e.PCA>=3)and(e.RP_E<=-1.00):
            try:
                s = salidas.filter(codigo=39)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_RETINA==1)and(e.EO_DEG_SENIL):
            try:
                s = salidas.filter(codigo=40)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_RETINA==1)and(e.EO_CIC_MAC):
            try:
                s = salidas.filter(codigo=41)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_RETINA==1:
            try:
                s = salidas.filter(codigo=42)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)      

        if e.EO_OCT==1:
            try:
                s = salidas.filter(codigo=41)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.PIO>20:
            try:
                s = salidas.filter(codigo=2)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_COOP<2:
            try:
                s = salidas.filter(codigo=45)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.EO_COOP==2:
            try:
                s = salidas.filter(codigo=46)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        if not e.RP_C:
            e.RP_C = 0
        if (abs(e.RP_C) > 1)and(e.GAL_COMA_CORNEAL==0)and(not((e.EO_CAT_TX)and(e.EO_IRID==3)and(e.EO_ZONULAS>=2)and(e.EO_RETINA==1)\
                and(e.EO_RET_DIAB)and(e.EO_PAP_GLAU)and(e.EO_DEG_SENIL)and(e.EO_CIC_MAC))):
            try:
                s = salidas.filter(codigo=48)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.QUERA_AK1_1 and (e.QUERA_AK1_1 <= 40):
           
            try:
                s = salidas.filter(codigo=65)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.QUERA_AK2_1 and (e.QUERA_AK2_1 <= 40):
            
            try:
                s = salidas.filter(codigo=65)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.QUERA_TK1_1 and (e.QUERA_TK1_1 <= 40):           
            try:
                s = salidas.filter(codigo=65)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.QUERA_TK2_1 and (e.QUERA_TK2_1 <= 40):
            
            try:
                s = salidas.filter(codigo=65)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)


        if e.QUERA_AK1_1 and (e.QUERA_AK1_1 >= 47):
            try:
                s = salidas.filter(codigo=50)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.QUERA_AK2_1 and (e.QUERA_AK2_1 >= 47):
            try:
                s = salidas.filter(codigo=50)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.QUERA_TK1_1 and (e.QUERA_TK1_1 >= 47):
            try:
                s = salidas.filter(codigo=50)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if e.QUERA_TK2_1 and (e.QUERA_TK2_1 >= 47):
            try:
                s = salidas.filter(codigo=50)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.LIO_C > 1)and(not e.EO_PSEUDO):
            try:
                s = salidas.filter(codigo=48)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.LAX < 22):
            try:
                s = salidas.filter(codigo=52)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.LAX >= 22)and(e.LAX <= 26):
            try:
                s = salidas.filter(codigo=53)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.LAX > 27):
            try:
                s = salidas.filter(codigo=54)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        # if (e.HO_AMBL and e.HO_DIPL and e.HO_ECTA)
        # (e.paciente.OC_MAN)and(not(e.PUPI_ESCO==None)and((e.PUPI_ESCO>5.5)or(e.PUPI_ESCO<2.5)))\
        #     and(not(e.PUPI_FOTO==None)and((e.PUPI_FOTO>5.5)or(e.PUPI_FOTO<2.5)))\
        #     and(not(e.PUPI_MESO==None)and((e.PUPI_MESO>5.5)or(e.PUPI_MESO<2.5)))and(e.EO_OPACC==1)\
        #     and(e.HO_CX_REFRACTIVA>0)and(e.EO_DEG_SENIL)and(abs(e.RP_C)>1):
            
        #     try:
        #         s = salidas.filter(codigo=55)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)

        if (e.HO_AMBL and e.HO_DIPL and e.HO_ECTA)and(e.HO_CX_REFRACTIVA>0)and(e.OJO_SECO>2)and(e.EO_PELICULA==1)\
            and(e.paciente.OC_MAN)and(e.EO_OPACC==1)and(e.EO_CAT_TX)and(e.EO_IRID==3)and(e.EO_ZONULAS>=2)\
            and(e.EO_RETINA==1)and(e.EO_RET_DIAB)and(e.EO_PAP_GLAU)and(e.EO_DEG_SENIL)and(e.EO_CIC_MAC)\
            and((e.PUPI_ESCO>5.5)or(e.PUPI_ESCO<2.5))and(abs(e.RP_C)>1)and(e.GAL_DIST_KAPPA>=0)and(e.GAL_TREFOIL==1)\
            and(e.GAL_QUATREFOIL==1)and(e.GAL_ABERRACIONES==1):
            try:
                s = salidas.filter(codigo=55)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.paciente.OC_PC or (e.paciente.OC_LF_LPF == 1))and(not e.EO_PSEUDO)and(e.HO_CX_REFRACTIVA==0)and(e.ASFERICIDAD>0):
            try:
                s = salidas.filter(codigo=56)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if ((e.paciente.edad >= 75) or (e.paciente.OC_LF_LPF == 2))and(e.EO_PSEUDO)and(e.HO_CX_REFRACTIVA==2)and(e.ASFERICIDAD<0):
            try:
                s = salidas.filter(codigo=57)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.paciente.OC_PC or (e.paciente.OC_LF_LPF == 1))and(not e.EO_PSEUDO)and(e.HO_CX_REFRACTIVA==0)and(e.ASFERICIDAD>0)and(abs(e.RP_C)<1):
            try:
                s = salidas.filter(codigo=58)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.paciente.OC_PC or (e.paciente.OC_LF_LPF == 1))and(not e.EO_PSEUDO)and(e.HO_CX_REFRACTIVA==0)and(e.ASFERICIDAD<0)and(abs(e.RP_C)>1):
            try:
                s = salidas.filter(codigo=59)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.PCA <= 2)and(e.PCA_MM<=3.25)and(e.CRISTALINO<=4.6):
            try:
                s = salidas.filter(codigo=60)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.PCA > 2)and(e.PCA_MM>3.25)and(e.CRISTALINO>=4.6):
            try:
                s = salidas.filter(codigo=61)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)
        
        if (e.EO_PELICULA == 1):
            try:
                s = salidas.filter(codigo=62)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.paciente.ALERGIAS):
            try:
                s = salidas.filter(codigo=63)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_CAT_HM)or(e.EO_CAT_MO)or(e.EO_CAT_I):
            try:
                s = salidas.filter(codigo=64)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_CAT_R)or(e.EO_CAT_N)or(e.EO_CAT_PP)or(e.CAT_N>4)or(e.CAT_P>3):
            try:
                s = salidas.filter(codigo=66)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)       


                
        if (e.EO_IRID >= 4):
            try:
                s = salidas.filter(codigo=70)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

            try:
                s = salidas.filter(codigo=26)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if ((abs(e.RP_C) > 0.5)or((e.HO_ECTA==0)))and(abs(e.RP_C)<3):
            try:
                s = salidas.filter(codigo=67)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.LIO_E or e.LIO_C or e.LIO_EJE):
            try:
                s = salidas.filter(codigo=71)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.OBSERVACIONES != ''):
            try:
                s = salidas.filter(codigo=72)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        multifocal = ((e.HO_CX_REFRACTIVA > 0)and(e.OJO_SECO > 2)and(e.paciente.OC_MAN)and(e.EO_OPACC==1)and(e.EO_CAT_TX)and(e.EO_IRID == 3)
            and(e.EO_ZONULAS >= 1)and(e.EO_RETINA==0)and(e.EO_PAP_GLAU)and(e.EO_DEG_SENIL)and(e.EO_CIC_MAC)and(e.GAL_TREFOIL==0)and(e.GAL_QUATREFOIL==0)and(e.GAL_ABERRACIONES==0))
        
       
        if ((abs(e.RP_C) <= 0.5)and(e.paciente.OC_LF_LPF == 2)and(e.paciente.OC_PC))and(not multifocal):
            try:
                s = salidas.filter(codigo=73)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        

        if (e.EO_GUTATTA > 0):
            try:
                s = salidas.filter(codigo=75)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)

        if (e.EO_CAT_TX)and(e.EO_IRID==3)and(e.EO_ZONULAS>=2)and(e.EO_RETINA==1)and(e.EO_RET_DIAB)and(e.EO_PAP_GLAU)and(e.EO_DEG_SENIL)and(e.EO_CIC_MAC)and(e.GAL_COMA_CORNEAL==1):
            try:
                s = salidas.filter(codigo=77)[0]
            except IndexError:
                    s = None
            if s:
                salida.append(s)




        # #CALCULOS GALILEI
        # # lente intraocular asférica NEUTRA o NEGATIVA.
        # if (e.GAL_ABERR_ESF==3)and(e.GAL_ASF==2)and(e.GAL_EXCENTRICIDAD==0):
        #     try:
        #         s = salidas.filter(codigo=75)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)

        # # lente intraocular asférica NEGATIVA. 
        # if (e.GAL_ABERR_ESF==2)and(e.GAL_ASF==1)and(e.GAL_EXCENTRICIDAD==1):
        #     try:
        #         s = salidas.filter(codigo=75)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)

        # # lente intraocular asférica NEUTRA o esférica POSITIVA. 
        # if (e.GAL_ABERR_ESF==1)and(e.GAL_ASF==0)and(e.GAL_EXCENTRICIDAD==2):
        #     try:
        #         s = salidas.filter(codigo=75)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)

        # # lente intraocular asférica NEUTRA o esférica POSITIVA.  
        # if (e.GAL_ABERR_ESF==0)and(e.GAL_ASF==0)and(e.GAL_EXCENTRICIDAD==3):
        #     try:
        #         s = salidas.filter(codigo=75)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)

        # #  CONTRAINDICADO el implante de lente intraocular tórica.
        # if (e.GAL_COMA_CORNEAL==1):
        #     try:
        #         s = salidas.filter(codigo=75)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)

        # #  CONTRAINDICADO el implante de lente intraocular multifocal difractiva apodizada.
        # if (e.GAL_TREFOIL==1)or(e.GAL_QUATREFOIL==1)or(e.GAL_ABERRACIONES==1):
        #     try:
        #         s = salidas.filter(codigo=75)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)

        # #CONTRAINDICADO el implante de lentes intraoculares multifocales difractivos.
        # if (e.GAL_DIST_KAPPA==0):
        #     try:
        #         s = salidas.filter(codigo=75)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)

        # #CONTRAINDICADO el implante de lentes intraoculares multifocales refractivos. 
        # if (e.GAL_DIST_KAPPA==1):
        #     try:
        #         s = salidas.filter(codigo=75)[0]
        #     except IndexError:
        #             s = None
        #     if s:
        #         salida.append(s)












         
        sets = set(salida)
        salida = list(sets)
        salida.sort(key=lambda x: x.orden, reverse=False)

        return render_to_response('resultados.html', {'e': e,'salida':salida},context_instance=RequestContext(request))



@login_required
def verTodos(request,ide):
        e = Examen.objects.get(id_examen=ide)
        salida = []
        salidas = Salidas.objects.all()
        salida = list(salidas)
        salida.sort(key=lambda x: x.orden, reverse=False)

        return render_to_response('resultados.html', {'e': e,'salida':salida},context_instance=RequestContext(request))


from easy_pdf.rendering import render_to_pdf_response   

@login_required 
def verDetalle(request,ide):     
    examen = get_object_or_404(Examen, pk=ide)    
    return render_to_response('detalle_examen.html',locals(),context_instance=RequestContext(request) )  

@login_required 
def imprimirDetalle(request,ide):       
    fecha = timezone.now().date()
    examen = get_object_or_404(Examen, pk=ide)    
    context = locals()    
    template = 'reporte_examen.html'  
    return render_to_pdf_response(request, template, context)
