#!/data/data/com.termux/files/usr/bin/bash

# Actualizar y actualizar paquetes
echo "Actualizando paquetes..."
pkg update -y && pkg upgrade -y

# Instalar dependencias necesarias: Node.js, MariaDB y herramientas básicas
echo "Instalando Node.js, MariaDB, wget y unzip..."
pkg install nodejs mariadb wget pkg install p7zip -y

# Configurar e inicializar MariaDB
echo "Inicializando la base de datos MariaDB..."
mysql_install_db > /dev/null 2>&1

# Iniciar MariaDB en segundo plano
echo "Iniciando el servicio de MariaDB..."
nohup mysqld_safe > /dev/null 2>&1 &

# Esperar unos segundos para que mysqld inicie correctamente
sleep 5

# Crear la base de datos 'db_sistema'
echo "Creando la base de datos 'db_sistema'..."
mariadb -u root -e "CREATE DATABASE IF NOT EXISTS db_sistema;" 

# Instalar PM2 globalmente
echo "Instalando PM2..."
npm install -g pm2

# Configurar PM2 para que inicie al arranque (esto mostrará instrucciones de configuración)
echo "Configurando PM2 para iniciar al arrancar Termux..."
pm2 startup

echo "-------------------------------------------------"
echo "Instalación completada."
echo "Tu entorno ya tiene Node.js, MariaDB y PM2 instalados."
echo "La base de datos 'db_sistema' ha sido creada."
echo ""
echo "Ahora puedes clonar y configurar manualmente tu proyecto."
echo "No olvides configurar las variables de entorno en el archivo .env de tu proyecto."
echo "-------------------------------------------------"
