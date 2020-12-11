# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.core.urlresolvers import reverse
from django.db import models
from .utilidades import *
from django.contrib.auth.models import User
import datetime
from dateutil.relativedelta import *
from django.core.validators import MinValueValidator, MaxValueValidator


class Paciente(models.Model):
    id_paciente = models.AutoField(primary_key=True)
    nombre = models.CharField(u'Apellido y Nombre',max_length=200)
    nrodocu = models.DecimalField('Documento',max_digits=18, decimal_places=0,blank=True,null=True)
    sexo = models.CharField('Sexo',max_length=1,choices=SEXO,default=0)
    edad = models.IntegerField('Edad',default=0,validators=[MinValueValidator(1)])
    direccion = models.CharField(u'Dirección',max_length=100, blank=True)
    email = models.CharField(u'E-Mail',max_length=100, blank=True)
    telefonos = models.CharField(u'Teléfonos',max_length=100, blank=True)
    os=models.CharField('Obras Sociales',max_length=100, blank=True)
    #Ocupación/Hobbie
    OC_PC = models.BooleanField(u'Trabaja con PC',default=False)
    OC_LF_LPF = models.IntegerField(u'',choices=TIPO_LECTOR,default=1)    
    OC_MAN= models.BooleanField(u'Maneja de Noche',default=False)
    
    HM_EC = models.BooleanField(u'Enfermedad Cardíaca',default=False)
    HM_HTA = models.BooleanField(u'Hipertensión Arterial',default=False)
    HM_DBT= models.BooleanField(u'Diabetes',default=False)
    HM_ET= models.BooleanField(u'Enfermedad Tiroidea',default=False)
    HM_EPOC= models.BooleanField(u'Enfermedad Pulmonar Crónica',default=False)
    HM_OTRAS= models.TextField(u'Otras',max_length=100, blank=True)
    #Medicaciones
    MEDICAC_AAS = models.BooleanField(u'Aspirina / Aspirineta',default=False)
    MEDICAC_ACOAG = models.BooleanField('Anticoagulantes Orales',default=False)
    MEDICAC_ABLOQ = models.BooleanField(u'Antiprostáticos',default=False)
    TOMA_AAS_ACOAG = models.BooleanField(u'Cesó toma de AAS y/o ACOAG',default=False)
    ALERGIAS = models.TextField(u'Alergias',max_length=100, blank=True)
    class Meta:
        db_table = 'paciente'
        verbose_name = u'Paciente'
        verbose_name_plural = u'Pacientes'  

    def __unicode__(self):
        return u'%s - %s' % (self.nombre,self.nrodocu)

class Examen(models.Model):
    id_examen = models.AutoField(primary_key=True)
    user = models.ForeignKey(User)
    paciente = models.ForeignKey('Paciente', db_column='id_paciente',db_index=True)
    ojo = models.IntegerField(choices=TIPO_OJO,default=0)
    #Historia Medica   

    ANESTESIA = models.IntegerField(u'Anestesia',choices=TIPO_ANESTESIA,default=0)
    CLEARANCE = models.IntegerField(u'Clearance Medicamentoso',choices=TIPO_CLEARANCE,default=0)
    MEDICAM_APTO = models.BooleanField(u'Medicamente Apto',default=True)
    HO_CX_REFRACTIVA = models.IntegerField(u'Cirugía Refractiva Previa',choices=TIPO_REFRACTIVA,default=0)
    HO_AMBL = models.BooleanField(u'Ambliopía',default=False)
    HO_DIPL = models.BooleanField(u'Diplopía',default=False)
    HO_ECTA= models.IntegerField(u'Ectasia',choices=TIPO_ECTASIA)
    TRATAM_GOTAS = models.IntegerField(u'Tratamiento con Gotas',choices=TIPO_GOTAS,default=0)    
    OTRAS_GOTAS = models.TextField(u'Otras Gotas',max_length=100, blank=True)
    #Examen Ocular
    EO_PROM= models.BooleanField(u'Prominencia Frontal / Enoftalmos',default=False)
    EO_ENDID= models.IntegerField(u'Hendidura Palpebral',choices=TIPO_HENDIDURA,default=0)
    EO_OPACC= models.IntegerField(u'Opacidad Corneal',choices=TIPO_OPACIDADC,default=0)
    EO_BLEFA= models.BooleanField(u'Blefaritis',default=False)
    EO_PELICULA= models.IntegerField(u'Película Lagrimal',choices=TIPO_PELICULA,default=0)
    EO_GUTATTA= models.IntegerField(u'Córnea Gutatta',choices=TIPO_GUTATTA,default=0)
    PIO = models.PositiveIntegerField(u'Presión Intraocular',blank=True, null=True,help_text='0-80[mmHg]',validators=[MinValueValidator(0), MaxValueValidator(80)])
    EO_AVP = models.IntegerField(u'Agudeza visual Potencial (PAM/LOTMAR)', blank=True, null=True,choices=TIPO_AVP)
    #Ver
    EO_RPUPIL = models.IntegerField(u'Reflejo Rojo Pupilar',choices=TIPO_PUPIL,default=0)
    EO_TINC = models.BooleanField(u'Tinción con Azul Tripán',default=False)
    #Ver
    PCA = models.IntegerField(u'Profundidad Cámara Anterior',choices=TIPO_PCA,default=0)
    PCA_MM = models.DecimalField(max_digits=5, decimal_places=2,blank=True, null=True,help_text='mm')
    EO_DILATP = models.IntegerField(u'Dilatación Pupilar',choices=TIPO_DILATP, default=0,help_text='mm')
    EO_IRID = models.IntegerField(u'Configuración Iridiana',choices=TIPO_IRID,default=0)
    EO_CAPSULA = models.IntegerField(u'Cápsula Anterior',choices=TIPO_CAPSULA,default=0)
    EO_SINEQUIAS = models.IntegerField(u'Sinequias Posteriores',choices=TIPO_SINEQUIAS,default=0)
    
    CAT_N = models.IntegerField(u'Catarata Nuclear',choices=TIPO_CATN,default=0)
    CAT_C = models.IntegerField(u'Catarata Cortical',choices=TIPO_CATC,default=0)
    CAT_P = models.IntegerField(u'Catarata Posterior',choices=TIPO_CATP,default=0)

    EO_CAT_HM = models.BooleanField(u'Hipermadura',default=False)
    EO_CAT_B = models.BooleanField(u'Brunescente',default=False)
    EO_CAT_R = models.BooleanField(u'Rubra',default=False)
    EO_CAT_N = models.BooleanField(u'Negra',default=False)
    EO_CAT_TX = models.BooleanField(u'Traumática',default=False)
    EO_CAT_MO = models.BooleanField(u'Morgagniana',default=False)
    EO_CAT_I = models.BooleanField(u'Intumescente',default=False)
    EO_CAT_PP = models.BooleanField(u'Polar Posterior',default=False)

    #Tipo Retina
    EO_RET_DIAB = models.BooleanField(u'Retinapatía Diabética',default=False)
    EO_PAP_GLAU = models.BooleanField(u'Papila Glaucomatosa',default=False)
    EO_DEG_SENIL = models.BooleanField(u'Degeneración Macular Senil/Tóxica',default=False)
    EO_CIC_MAC = models.BooleanField(u'Cicatriz Macular/MER',default=False)
    EO_OTROS = models.TextField(u'Otros',max_length=500, blank=True) 


    EO_PSEUDO = models.BooleanField(u'Pseudoexfoliación',default=False)
    EO_ZONULAS = models.IntegerField(u'Zónulas',choices=TIPO_ZONULAS,default=0)
    EO_VITREO = models.IntegerField(u'Vítreo',choices=TIPO_VITREO,default=0)
    EO_RETINA = models.IntegerField(u'Retina',choices=TIPO_RETINA,default=0)
    
    EO_ECO = models.BooleanField(u'Necesita ECO',default=False)
    EO_OCT = models.IntegerField(u'OCT Macular',choices=TIPO_OCT,default=0)
    EO_COOP = models.IntegerField(u'Cooperación Paciente',choices=TIPO_COOP,default=0)

    AVMCL = models.IntegerField(u'Agudeza visual mejor corregida de lejos',choices=TIPO_AVMCL,help_text=' D',default=0,blank=True, null=True,)
    AVMCC = models.IntegerField(u'Agudeza visual mejor corregida de cerca',choices=TIPO_AVMCC,help_text='[J]',blank=True, null=True,default=0)
    AVCE = models.IntegerField(u'Agudeza visual con estenopeico',choices=TIPO_AVMCL,help_text=' D',blank=True, null=True,default=0)

    
    #Refraccion Preoperatoria
    RP_E = models.DecimalField(u'Esfera',max_digits=5, decimal_places=2, blank=True, null=True,help_text='-30-30 D',validators=[MinValueValidator(-30), MaxValueValidator(30)])
    RP_C = models.DecimalField(u'Cilindro',max_digits=5, decimal_places=2, blank=True, null=True,help_text='-20-20 D',validators=[MinValueValidator(-20), MaxValueValidator(20)])
    RP_EJE = models.PositiveIntegerField(u'Eje',blank=True, null=True,help_text='0-180 º',validators=[MinValueValidator(0), MaxValueValidator(180)])
    
    QUERA_AK1_1 = models.DecimalField(u'K1',max_digits=5, decimal_places=2, blank=True, null=True,help_text='0-90 D',validators=[MinValueValidator(0), MaxValueValidator(90)])
    QUERA_AK1_2 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True,help_text='º',validators=[MinValueValidator(0), MaxValueValidator(180)])
    QUERA_AK2_1 = models.DecimalField(u'K2',max_digits=5, decimal_places=2, blank=True, null=True,help_text='0-90 D',validators=[MinValueValidator(0), MaxValueValidator(90)])
    QUERA_AK2_2 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True,help_text='º',validators=[MinValueValidator(0), MaxValueValidator(180)])

    QUERA_TK1_1 = models.DecimalField(u'K1',max_digits=5, decimal_places=2, blank=True, null=True,help_text='0-90 D',validators=[MinValueValidator(0), MaxValueValidator(90)])
    QUERA_TK2_1 = models.DecimalField(u'K2',max_digits=5, decimal_places=2, blank=True, null=True,help_text='0-90 D',validators=[MinValueValidator(0), MaxValueValidator(90)])
    QUERA_TK1_2 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True,help_text='º',validators=[MinValueValidator(0), MaxValueValidator(180)])
    QUERA_TK2_2 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True,help_text='º',validators=[MinValueValidator(0), MaxValueValidator(180)])

    PUPI_ESCO = models.DecimalField(u'Escotópica',max_digits=5, decimal_places=2, blank=True, null=True,help_text='0-10mm',validators=[MinValueValidator(0), MaxValueValidator(10)])
    PUPI_FOTO = models.DecimalField(u'Fotópica',max_digits=5, decimal_places=2, blank=True, null=True,help_text='0-10mm',validators=[MinValueValidator(0), MaxValueValidator(10)])
    PUPI_MESO = models.DecimalField(u'Mesotópica',max_digits=5, decimal_places=2, blank=True, null=True,help_text='0-10mm',validators=[MinValueValidator(0), MaxValueValidator(10)])

    OJO_SECO = models.IntegerField(u'Grado de Severidad de Ojo Seco',choices=TIPO_OJO_SECO,default=0)


    #Poder de LIO
    LIO_E = models.DecimalField(u'Esfera',max_digits=5, decimal_places=2, blank=True, null=True,help_text='-40-40 D',validators=[MinValueValidator(-40), MaxValueValidator(40)])
    LIO_C = models.DecimalField(u'Cilindro',max_digits=5, decimal_places=2, blank=True, null=True,help_text='-40-40 D',validators=[MinValueValidator(-40), MaxValueValidator(40)])
    LIO_EJE = models.PositiveIntegerField(u'Eje',blank=True, null=True,help_text='0-180 º',validators=[MinValueValidator(0), MaxValueValidator(180)])
    ASFERICIDAD = models.DecimalField(u'Asferic. Corneal(Q)',max_digits=5, decimal_places=2, blank=True, null=True,help_text='-100-100mm',validators=[MinValueValidator(-100), MaxValueValidator(100)])
    CRISTALINO = models.DecimalField(u'Grosor del Cristalino',max_digits=5, decimal_places=2, blank=True, null=True,help_text='0-10mm',validators=[MinValueValidator(0), MaxValueValidator(10)])
    #FORMULAS = 
    LENTE_INTRA = models.IntegerField(u'Lente Intraocular',choices=TIPO_LENTE_INTRA, blank=True, null=True)
    ABERROM = models.IntegerField(u'Aberrometría',choices=TIPO_ABERROM,default=0,blank=True, null=True)
    LAX = models.DecimalField(u'Longitud Axial',max_digits=5, decimal_places=2,blank=True, null=True,help_text='15-40mm',validators=[MinValueValidator(15), MaxValueValidator(40)])
    PAQ = models.DecimalField(u'Paquimetría Corneal',max_digits=5, decimal_places=2,blank=True, null=True,help_text='10-1000[µm]',validators=[MinValueValidator(10), MaxValueValidator(1000)])
    REC_ENDO = models.IntegerField(u'Recuento Endotelial',choices=TIPO_REC_ENDO,default=2,help_text='[cel./mm2]')
    TIPO_FORMULA = models.IntegerField(u'Fórmula a Utilizar',choices=TIPO_FORM,default=0)
    #Incisión
    INCIS = models.DecimalField(u'Sitio Incisión',max_digits=5, decimal_places=2,blank=True, null=True,help_text='0-180 º',validators=[MinValueValidator(0), MaxValueValidator(180)])
    
    TIPO_I = models.IntegerField(u'Tratamiento Astigmatismo con Incisiones',choices=TIPO_I,blank=True, null=True)
    TIPO_INCIS = models.IntegerField(u'Tipo',choices=TIPO_INCISION,blank=True, null=True)
    INCIS_TAM = models.DecimalField(u'Tamaño',max_digits=5, decimal_places=2,blank=True, null=True,help_text='0-10mm',validators=[MinValueValidator(0), MaxValueValidator(10)])
    INCIS_E1 = models.DecimalField(u'Eje 1',max_digits=5, decimal_places=2,blank=True, null=True,help_text='0-180 º',validators=[MinValueValidator(0), MaxValueValidator(180)])
    INCIS_E2 = models.DecimalField(u'Eje 2',max_digits=5, decimal_places=2,blank=True, null=True,help_text='180-360 º',validators=[MinValueValidator(180), MaxValueValidator(360)])
    CTE_A = models.DecimalField(u'Cte. A de LIO',max_digits=5, decimal_places=2, choices=TIPO_CTE_A,default=118.0)

    OBSERVACIONES = models.TextField(u'Observaciones',max_length=500, blank=True) 

    #GALILEI
    GAL_ABERR_ESF = models.IntegerField(u'Aberración Esférica (SA)',choices=TIPO_ABERROM_ESF,help_text='(VN: 0 a 0.30μm)',blank=True, null=True,)
    GAL_ASF = models.IntegerField(u'Asfericidad (Q)',choices=TIPO_ASF,blank=True, null=True,)
    GAL_EXCENTRICIDAD = models.IntegerField(u'Excentricidad (e²)',choices=TIPO_EXCENTRICIDAD,blank=True, null=True,)
    GAL_COMA_CORNEAL = models.IntegerField(u'Coma Total Corneal',choices=TIPO_COMA_CORNEAL,help_text='μm',blank=True, null=True,)
    GAL_TREFOIL = models.IntegerField(u'Trefoil',choices=TIPO_TREFOIL,help_text='μm',blank=True, null=True,)
    GAL_QUATREFOIL = models.IntegerField(u'Quatrefoil',choices=TIPO_QUATREFOIL,help_text='μm',blank=True, null=True,)
    GAL_ABERRACIONES = models.IntegerField(u'Aberraciones de 5º orden',choices=TIPO_ABERRAC,help_text='μm',blank=True, null=True,)
    GAL_DIST_KAPPA = models.IntegerField(u'Distancia Kappa',choices=TIPO_DIST_KAPPA,help_text='(VN:0.28±0.16mm) ',blank=True, null=True,)

    class Meta:
        db_table = 'examen'
        verbose_name = u'Examen'
        verbose_name_plural = u'Examenes'  

    def __unicode__(self):
        return u'%s' % (self.paciente)


class Salidas(models.Model):
    id_salida = models.AutoField(primary_key=True)
    codigo = models.IntegerField(u'Código')
    encabezado = models.TextField(u'Encabezado',max_length=200)
    orden = models.IntegerField(u'Orden',default=0)
    orden2 = models.IntegerField(u'Orden2',default=0,null=True,blank=True)
    contenido = models.TextField(u'Contenido',max_length=9500, blank=True) 
    tipo = models.CharField(u'Tipo Salida',max_length=20,choices=TIPO_SALIDA,default='blue')
    ruta_img = models.CharField(u'Ruta Imagen',max_length=100,blank=True,null=True)
    documentacion = models.CharField(u'Nombre Archivo Documentación',max_length=50,blank=True,null=True)
    documentacion2 = models.CharField(u'Nombre Archivo Documentación',max_length=50,blank=True,null=True)
    class Meta:
        db_table = 'salidas'
        verbose_name = u'Salidas'
        verbose_name_plural = u'Salidas'  

    def __unicode__(self):
        return u'%s - %s' % (self.encabezado,self.tipo)

class Pais(models.Model):
    idp = models.IntegerField(primary_key=True,db_column='id')
    paisnombre = models.CharField(max_length=50)
    class Meta:
        db_table = 'pais'
    
    def __unicode__(self):
        return u'%s' % (self.paisnombre)

#Tabla de Usuario con datos Extra
class UserProfile(models.Model):
    nombre = models.CharField(u'Apellido y Nombre',max_length=200,blank=True,null=True)
    nrodocu = models.DecimalField('Nº Documento',max_digits=18, decimal_places=0,blank=True,null=True)
    matricula = models.CharField(u'Nº Matrícula',max_length=200,blank=True,null=True)
    pais = models.ForeignKey(Pais, db_column='pais',db_index=True,default=5,blank=True,null=True)
    localidad = models.CharField(u'Localidad/Estado',blank=True, null=True,max_length=200)
    email = models.CharField(max_length=50)
    user = models.OneToOneField(User)

    class Meta:
        db_table = 'user_profile'
        verbose_name = u'Perfil'
        verbose_name_plural = u'Perfiles'  

    def __unicode__(self):
        return self.user.username
