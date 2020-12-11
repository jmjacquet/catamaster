# -*- coding: utf-8 -*-
from datetime import datetime, timedelta
import decimal
from django.contrib import messages
from django.conf import settings
from django.contrib.messages import constants as message_constants

MESSAGE_TAGS = {message_constants.DEBUG: 'debug',
                message_constants.INFO: 'info',
                message_constants.SUCCESS: 'success',
                message_constants.WARNING: 'warning',
                message_constants.ERROR: 'danger',}



ANIOS = (
	('2018', '2018'),
    ('2017', '2017'),
    ('2016', '2016'),
    ('2015', '2015'),
    ('2014', '2014'),
    ('2013', '2013'),
    ('2012', '2012'),
    ('2011', '2011'),
    ('2010', '2010'),
)

MESES = (
    ('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4'),
    ('5', '5'),
    ('6', '6'),
    ('7', '7'),
    ('8', '8'),
    ('9', '9'),
    ('10', '10'),
    ('11', '11'),
    ('12', '12'),
)

PERIODOS = (
    ('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4'),
    ('5', '5'),
    ('6', '6'),
    ('7', '7'),
    ('8', '8'),
    ('9', '9'),
    ('10', '10'),
    ('11', '11'),
    ('12', '12'),
)
TIPO_SALIDA = (
    ('primary', u'Normal Azul'),
    ('info', u'Informativa Celeste'),
    ('success', u'Exitosa Verde'),
    ('warning', u'Atención Amarilla'),
    ('danger', u'Peligrosa Rojo'),
)

SEXO = (
    ('M', 'M'),
    ('F', 'F'),
)

TIPO_OJO = (
    (0, 'Ojo Derecho'),
    (1, 'Ojo Izquierdo'),
)

TIPO_LECTOR = (    
    (1, 'Lector Poco Frecuente'),
    (2, 'Lector Frecuente'),
)

TIPO_ECTASIA = (    
    (0, 'Astigmatismo Regular'),
    (1, 'Astigmatismo Irregular'),
)

TIPO_OJO_SECO = (    
    (0, u'No'),
    (1, u'1'),
    (2, u'2'),
    (3, u'3'),
    (4, u'4'),
)

TIPO_ANESTESIA = (
    (0, u'Ninguna'),
    (1, u'Tópica'),
    (2, u'Local'),
    (3, u'General'),
)
TIPO_CLEARANCE = (
    (1, u'Necesario'),
    (0, u'No Necesario'),
)

TIPO_REFRACTIVA = (
    (0, u'Ninguna'),
    (1, u'Miópica'),
    (2, u'Hipermetrópica'),
)

TIPO_GOTAS = (
    (0, u'Ninguno'),
    (1, u'Prostaglandinas'),
    (2, u'Lubricantes'),
)

TIPO_HENDIDURA = (
    (0, u'Normal'),
    (1, u'Semiestrecha'),
    (2, u'Fimótica'),
)

TIPO_PCA = (
    (1, '1 (< 3.25 mm)'),
    (2, '2 (< 3.25 mm)'),
    (3 ,'3 (> 3.25 mm)'),
    (4, '4 (> 3.25 mm)'),
)

TIPO_OPACIDADC = (
    (0, u'No'),
    (1, u'Central'),
    (2, u'Periférica'),    
)

TIPO_GUTATTA = (
    (0, 'No'),    
    (1, '1'),
    (2, '2'),
    (3, '3'),
    (4, '4'),
)

TIPO_AVP = (
    (20, '20/20'),
    (25, '20/25'),
    (30, '20/30'),
    (40, '20/40'),
    (50, '20/50'),
    (60, '20/60'),
    (80, '20/80'),
    (100, '20/100'),
    (150, '20/150'),
    (200, '20/200'),
    (300, '20/300'),
)

TIPO_PUPIL = (
    (0, u'+'),
    (1, u'-'),
    (2, u'Tenue'),
)

TIPO_DILATP = (
    (0, u'Máxima >= 7 [mm]'),
    (1, u'Media 6-4 [mm]'),
    (2, u'Pobre < 4 [mm]'),
)

TIPO_IRID = (
    (0, u'Normal'),
    (1, u'Acartonado'),
    (2, u'Atrófico'),
    (3, u'Iridodonesis'),
    (4, u'Discoria'),
    (5, u'Rotura Focal EI'),
    (6, u'Iridodiálisis'),
    (7, u'Daño Completo EI'),
)

TIPO_CAPSULA = (
    (0, u'Normal'),
    (1, u'Fibrosa'),
    (2, u'Calcárea'),
)

TIPO_SINEQUIAS = (    
    (0, u'No'),
    (1, u'Si'),
    (2, u'Seclusión Pupilar'),
)



TIPO_CATN= (
    (0, u'--'),
    (1, u'N1'),
    (2, u'N2'),
    (3, u'N3'),
    (4, u'N4'),
    (5, u'N5'),
    (6, u'N6'),
)

TIPO_CATC= (
    (0, u'--'),
    (1, u'C1'),
    (2, u'C2'),
    (3, u'C3'),
    (4, u'C4'),
    (5, u'C5'),
)

TIPO_CATP= (
    (0, u'--'),
    (1, u'P1'),
    (2, u'P2'),
    (3, u'P3'),
    (4, u'P4'),
    (5, u'P5'),
)


TIPO_ZONULAS = (
    (0, u'Normales'),
    (1, u'Diálisis < 90º'),
    (2, u'Diálisis 90º - 180º'),
    (3, u'Diálisis > 180º'),
    (4, u'Facodonesis'),
)
TIPO_VITREO = (
    (0, u'Normal'),
    (1, u'Licuefacción'),
    (2, u'DVP (desprendimiento vítreo posterior)'),
    (3, u'Hialosis Asteroidea'),
    (4, u'Gas'),
    (5, u'Aceite'),
)

TIPO_RETINA = (
    (0, u'Normal'),
    (1, u'Anormal'),
)

TIPO_PELICULA = (
    (0, u'Normal'),
    (1, u'Anormal'),
)

TIPO_OCT = (
    (0, u'Normal'),
    (1, u'Anormal'),
)

TIPO_COOP = (
    (0, u'Buena'),
    (1, u'Media'),
    (2, u'Mala'),
)

TIPO_AVMCL = (
    (0, 'NPL'),
    (1, 'PL'),
    (2, 'VB'),
    (3, 'CD'),
    (4, '0.05'),
    (5, '0.1'),
    (6, '0.2'),
    (7, '0.3'),
    (8, '0.4'),
    (9, '0.5'),
    (10, '0.6'),
    (11, '0.7'),
    (12, '0.8'),
    (13, '0.9'),
    (14, '1.0'),    
)

TIPO_AVMCC = (
    (0, 'J1'),
    (1, 'J2'),
    (2, 'J3'),
    (3, 'J4'),
    (4, 'J5'),
    (5, 'J6'),
    (6, 'J7'),
)

TIPO_LENTE_INTRA = (
    (0, u'Asférica'),
    (1, u'Esférica'),
    (2, u'Tórica'),
    (3, u'Multifocal'),
    (4, u'Multifocal Tórica'),
    (5, u'Trifocal'),
)

TIPO_QUERA = (
    (0, u'Manual'),
    (1, u'Automática'),
    (2, u'Topográfica'),
)

TIPO_ABERROM = (
    (0, u'Normal'),
    (1, u'Anormal'),
)
TIPO_FORM = (
    (0, u'SRK/T'),
    (1, u'Hoffer Q'),
    (2, u'Holl II'),
    (3, u'Haigis'),
    (4, u'Haigis L'),
    (5, u'Barret Univ.'),
    (6, u'Flikier'),
    (7, u'ASCRS'),
)

TIPO_INCISION = (
    (0, u'Simple'),
    (1, u'Pareadas'),
)
TIPO_I = (
    (0, u'Perforantes'),
    (1, u'Incisiones Limbares Relajantes'),
    (2, u'Incisiones Arcuatas'),
    (3, u'LASIK'),
)

TIPO_REC_ENDO = (
    (1, u'< 1500'),
    (2, u'> 1500'),
)

from decimal import Decimal

TIPO_CTE_A = (
    (Decimal('115.3'),'115.3'),
    (Decimal('118.0'),'118.0'),
    (Decimal('118.3'),'118.3'),
    (Decimal('118.7'),'118.7'),
    (Decimal('119.0'),'119.0'),
    (Decimal('119.3'),'119.3'),
    (Decimal('119.7'),'119.7'),
    )


TIPO_ABERROM_ESF = (
    (0, u'- (negativa): < 0'),
    (1, u'0 (cero)'),
    (2, u'+(positiva):+0.25 a +0.30 aprox.'),
    (3, u'+(positiva) > 0.30'),    
)

TIPO_ASF = (
    (0, u'>= 0 (cero)'),
    (1, u'= 0 (cero)'),
    (2, u'<= 0 (cero)'),    
)

TIPO_EXCENTRICIDAD = (
    (0, u'e² < 0'),
    (1, u'e² = 0'),
    (2, u'e² = +0.60'),    
    (3, u'e² ≥ +1.00'),    
)

TIPO_COMA_CORNEAL = (
    (0, u'< ± 0.5'),
    (1, u'> ± 0.5'),  
)

TIPO_TREFOIL = (
    (0, u'< ± 0.40'),
    (1, u'≥ ± 0.40'),  
)

TIPO_QUATREFOIL = (
    (0, u'< ± 0.30'),
    (1, u'≥ ± 0.30'),  
)

TIPO_ABERRAC = (
    (0, u'< ± 0.20'),
    (1, u'≥ ± 0.20'),  
)

TIPO_DIST_KAPPA = (
    (0, u'> 0.45 mm'),
    (1, u'> 0.75 mm'),  
)