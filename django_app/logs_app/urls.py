from django.urls import path
from ..logs_project import views

urlpatterns = [
    path('show_logs/', views.show_logs, name='show_logs'),
    path('search_logs/', views.search_logs, name='search_logs'),
]
