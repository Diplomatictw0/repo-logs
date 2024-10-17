# Configuración de GCC con Docker y Balanceador de Carga

Este directorio contiene los archivos de configuración necesarios para desplegar la aplicación Django con una base de datos PostgreSQL utilizando Docker y GCC. Se incluye también una configuración para un balanceador de carga basado en Nginx.

## Requisitos

- [Docker](https://www.docker.com/) instalado en tu sistema.
- [GCC](https://gcc.gnu.org/) o cualquier entorno para ejecutar simulaciones.

## Configuración

1. Clona el repositorio:

    ```bash
    git clone https://github.com/tu-usuario/tu-repo.git
    cd tu-repo/gcc_setup
    ```

2. Construye y despliega los contenedores con Docker:

    ```bash
    docker-compose up --build
    ```

3. Nginx actuará como balanceador de carga y dirigirá el tráfico a la aplicación web. Puedes acceder a la aplicación en:

    ```bash
    http://localhost:8080/logs/
    ```

4. La base de datos PostgreSQL también estará disponible en el puerto `5432`, con los parámetros especificados en el archivo `docker-compose.yml`.

### Componentes del entorno:

- **Web:** Servidor Django ejecutándose en el puerto 8080.
- **Database:** PostgreSQL que aloja los registros de logs.

### Balanceador de Carga:

- Nginx redirige las peticiones al servidor web a través del puerto `80`.

## Simulación con GCC

Para simular el comportamiento del sistema bajo carga:

1. Asegúrate de que los contenedores estén corriendo.
2. Ejecuta las pruebas de carga o simulaciones de consulta sobre el balanceador de carga.

```bash
gcc ./tu-simulacion.c -o simulacion
./simulacion
