# Sistema de Ventas

- Tener `git` instalado.
```bash
   git isntall
```

## Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/raul-gabriel/sistema_ventas.git
   ```
2. entrar al carpeta:
   ```bash
   cd sistema_ventas
   ```
3. darle permisos:
   ```bash
   chmod +x install.sh
   ```
4. ejecutar:
   ```bash
   ./install.sh
   ```
5. descomprimir:
   ```bash
   7z x -p[password] -y sistema_ventas.zip
   ```
6. instalar librerias:
   ```bash
   cd sistema_ventas
   npm i
   ```


   6. monstar la db:
   ```bash
   cd database
   sed -i 's/utf8mb4_0900_ai_ci/utf8mb4_general_ci/g' db_sistema.sql
   mariadb -u root db_sistema < db_sistema.sql
   ```
   si no se creo la db usar este:
   ```bash
   mariadb -u root -e "CREATE DATABASE IF NOT EXISTS db_sistema;"
   ```
