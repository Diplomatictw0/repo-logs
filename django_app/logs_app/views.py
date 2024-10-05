from django.shortcuts import render
from django.http import JsonResponse
from .models import LogsModel
import threading

def generate_initial_logs():
    LogsModel.generate_logs(10000)

# Llamar a la generación de logs en un hilo separado para no bloquear
threading.Thread(target=generate_initial_logs).start()

def show_logs(request):
    logs = LogsModel.objects.all()[:10000]
    return render(request, 'logs.html', {'logs': logs})

def search_logs(request):
    query = request.GET.get('query', '')
    logs = LogsModel.objects.filter(message__icontains=query)
    return render(request, 'logs.html', {'logs': logs})
