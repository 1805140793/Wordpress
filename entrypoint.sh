#!/bin/bash
set -e

# Configurar permisos
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;
chmod 600 /var/www/html/wp-config.php
chmod 644 /var/www/html/.htaccess

# Ejecutar el comando original de Docker
exec "$@"
