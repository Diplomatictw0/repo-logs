from django.urls import path
from . import views

urlpatterns = [
    path('', views.logs_view, name='logs_view'),  # Vista para mostrar los logs
]
