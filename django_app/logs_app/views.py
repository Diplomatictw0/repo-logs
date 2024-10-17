from django.shortcuts import render
from .models import LogsModel

def logs_view(request):
    logs = LogsModel.objects.all().order_by('-timestamp')  # Obtener todos los logs
    return render(request, 'logs_app/logs.html', {'logs': logs})
