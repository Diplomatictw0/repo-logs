from django.db import models
import random
import string

class LogsModel(models.Model):
    timestamp = models.DateTimeField(auto_now_add=True)
    log_level = models.CharField(max_length=10, choices=[('INFO', 'Info'), ('ERROR', 'Error'), ('DEBUG', 'Debug')])
    message = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.timestamp} - {self.log_level}: {self.message}"
