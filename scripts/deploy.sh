#!/bin/bash

# Despliegue general del proyecto

echo "Iniciando el despliegue del proyecto..."

# Despliegue de la base de datos PostgreSQL
bash scripts/database_setup.sh

# Despliegue del balanceador de carga
bash scripts/load_balancer.sh

# Desplegar la aplicación Django en Google Cloud
gcloud app deploy --quiet

echo "Despliegue completado."
