import os
PROJECT_ROOT = os.path.join(os.path.dirname(__file__), '..') #every dot represent the location of the folder so when you try to delete one dot, the path will be change
 
SITE_ROOT = PROJECT_ROOT
 
DEBUG = False
TEMPLATE_DEBUG = DEBUG
 
ADMINS = (
    # ('Your Name', 'your_email@example.com'),
)
 
MANAGERS = ADMINS
 
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql', # Add 'postgresql_psycopg2', 'postgresql', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'calculador_db',            # Or path to database file if using sqlite3.
        'USER': 'jumaja',                      # Not used with sqlite3.
        'PASSWORD': 'qwerty',            # Not used with sqlite3.
        'HOST': 'ivancimino.webfactional.com',                      # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',   
    }
}
 
 
ALLOWED_HOSTS = '*'
 
TIME_ZONE = 'America/Argentina/Buenos_Aires'
 
LANGUAGE_CODE = 'es-AR'
 
SITE_ID = 1
 
USE_I18N = True
 
USE_L10N = True
 
# If you set this to False, Django will not use timezone-aware datetimes.
USE_TZ = True
DEFAULT_CHARSET = 'utf-8'
FILE_CHARSET = 'utf-8'
 
MEDIA_ROOT = os.path.join(SITE_ROOT, 'media')
 
MEDIA_URL = '/media/'
 

STATIC_ROOT = '/home/ivancimino/webapps/staticcalc/'
if DEBUG:
    STATIC_URL = '/staticfiles/'
    STATICFILES_DIRS = (
    os.path.join(SITE_ROOT, 'staticfiles'),)
else:
    STATIC_URL = 'http://www.catamaster.com.ar/staticfiles/'
    STATICFILES_DIRS = (
        '/home/ivancimino/webapps/calulador/icimino/static/',
        os.path.join(SITE_ROOT, 'staticfiles'),)
 
TEMPLATE_DIRS = (
    os.path.join(SITE_ROOT, 'templates'),
)
ADMIN_MEDIA_PREFIX = os.path.join(SITE_ROOT, 'static/admin')
 
STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
    'django.contrib.staticfiles.finders.DefaultStorageFinder',
)
# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'ka7l09-c9rwosjp02an!y30e@nsz#6!=5zc!!o440z9=9&(ikh'
 
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',    
    #'django.template.loaders.eggs.Loader',
)
 
TEMPLATE_CONTEXT_PROCESSORS =   (
    'django.contrib.auth.context_processors.auth',
    'django.core.context_processors.debug',
    'django.core.context_processors.i18n',
    'django.core.context_processors.media',
    'django.core.context_processors.static',
    'django.core.context_processors.request',
    'django.contrib.messages.context_processors.messages',
)
 
MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    # Uncomment the next line for simple clickjacking protection:
    # 'django.middleware.clickjacking.XFrameOptionsMiddleware',
    # 'debug_toolbar.middleware.DebugToolbarMiddleware',#Barra DEBUG
 
)
INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.admin',
    'django.contrib.admindocs',
    'django.contrib.humanize',
    'calculator',
    'bootstrap3', 
    'django_extensions',
    'crispy_forms',
    'modal'
    #'debug_toolbar',
           
)
 
AUTH_PROFILE_MODULE = "calculator.UserProfile"
ROOT_URLCONF = 'icimino.urls'
 
WSGI_APPLICATION = 'icimino.wsgi.application'
 
 
SESSION_SERIALIZER = 'django.contrib.sessions.serializers.JSONSerializer'
 
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'formatters': {
        'verbose': {
            'format': '%(levelname)s %(asctime)s %(module)s %(process)d %(thread)d %(message)s',
        },
        'simple': {
            'format': '%(levelname)s %(message)s',
        },
    },
    'handlers': {
        'logfile': {
            'class': 'logging.handlers.WatchedFileHandler',
            'filename': os.path.join(SITE_ROOT, "errores.log"),
            'formatter': 'verbose'
        },
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        },
        'console': {
            'level': 'DEBUG',
            'class': 'logging.StreamHandler',
            'formatter': 'verbose',
        },
    },
    'loggers': {
        'django.request': {
            # 'handlers': ['mail_admins'],
            'handlers': ['console'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}
 
CRISPY_TEMPLATE_PACK = 'bootstrap3'
INTERNAL_IPS = ('127.0.0.1',)
LOGIN_URL = '/login/'
ROOT_URL = '/'
SESSION_EXPIRE_AT_BROWSER_CLOSE = True

BOOTSTRAP3 = {
    # The Bootstrap base URL
    'base_url': os.path.join(SITE_ROOT, 'staticfiles/css/'),

    # The complete URL to the Bootstrap CSS file (None means derive it from base_url)
    'css_url': None,

    # The complete URL to the Bootstrap CSS file (None means no theme)
    'theme_url': None,

    # The complete URL to the Bootstrap JavaScript file (None means derive it from base_url)
    'javascript_url': None,

    # Put JavaScript in the HEAD section of the HTML document (only relevant if you use bootstrap3.html)
    'javascript_in_head': False,

    # Include jQuery with Bootstrap JavaScript (affects django-bootstrap3 template tags)
    'include_jquery': False,

    # Label class to use in horizontal forms
    'horizontal_label_class': 'col-md-2',

    # Field class to use in horizontal forms
    'horizontal_field_class': 'col-md-5',

    # Set HTML required attribute on required fields
    'set_required': True,

    # Set HTML disabled attribute on disabled fields
    'set_disabled': False,

    # Set placeholder attributes to label if no placeholder is provided
    'set_placeholder': True,

    # Class to indicate required (better to set this in your Django form)
    'required_css_class': '',

    # Class to indicate error (better to set this in your Django form)
    'error_css_class': 'has-error',

    # Class to indicate success, meaning the field has valid input (better to set this in your Django form)
    'success_css_class': 'has-success',
}

from django.contrib.messages import constants as message_constants
MESSAGE_TAGS = {message_constants.DEBUG: 'debug',
                message_constants.INFO: 'info',
                message_constants.SUCCESS: 'success',
                message_constants.WARNING: 'warning',
                message_constants.ERROR: 'danger',} 