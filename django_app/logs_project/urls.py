from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),  # Ruta para la administración de Django
    path('logs/', include('logs_app.urls')),  # Incluir las URLs de logs_app
]
