#!/bin/bash

# Despliegue de Balanceador de Carga con GCC

echo "Configurando balanceador de carga..."

# Configuración de reglas para balanceo de carga
# Asumiendo que ya tienes configurados los servicios en GCC

# Variables
TARGET_POOL_NAME="logs-target-pool"
FORWARDING_RULE_NAME="logs-forwarding-rule"
REGION="us-central1"
HEALTH_CHECK_NAME="logs-health-check"

# Crear una verificación de salud para los servidores backend
gcloud compute health-checks create http $HEALTH_CHECK_NAME \
    --port 8080 --request-path="/logs/healthcheck"

# Crear un pool de objetivos (servers) para distribuir el tráfico
gcloud compute target-pools create $TARGET_POOL_NAME --region=$REGION

# Asociar la verificación de salud con el pool de objetivos
gcloud compute target-pools add-health-checks $TARGET_POOL_NAME \
    --health-check=$HEALTH_CHECK_NAME --region=$REGION

# Crear una regla de reenvío para redirigir el tráfico al pool
gcloud compute forwarding-rules create $FORWARDING_RULE_NAME \
    --target-pool=$TARGET_POOL_NAME --region=$REGION \
    --ports=8080

echo "Balanceador de carga configurado con éxito."
