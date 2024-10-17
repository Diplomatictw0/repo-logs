# Generated by Django 3.2 on 2024-10-17 22:30

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='LogsModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
                ('log_level', models.CharField(choices=[('INFO', 'Info'), ('ERROR', 'Error'), ('DEBUG', 'Debug')], max_length=10)),
                ('message', models.CharField(max_length=255)),
            ],
        ),
    ]
