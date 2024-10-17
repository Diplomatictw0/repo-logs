#!/bin/bash

# Configurar la base de datos PostgreSQL
sudo apt-get update
sudo apt-get install -y postgresql postgresql-contrib

# Iniciar servicio PostgreSQL
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Crear base de datos y usuario
sudo -u postgres psql <<EOF
CREATE DATABASE your_db_name;
CREATE USER your_db_user WITH PASSWORD 'your_db_password';
ALTER ROLE your_db_user SET client_encoding TO 'utf8';
ALTER ROLE your_db_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE your_db_user SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE your_db_name TO your_db_user;
EOF

# Cargar datos de logs desde CSV
psql -U your_db_user -d your_db_name -c "\copy logs_app_logsmodel(log_level, message) FROM '/path/to/logs.csv' DELIMITER ',' CSV HEADER;"
