#!/bin/bash

# Configuración FTP
HOST=$FTP_HOST
USER=$FTP_USER
PASSWORD=$FTP_PASSWORD
REMOTE_PATH=$FTP_REMOTE_PATH

# Conexión FTP y sincronización
lftp -c "
set ftp:ssl-allow no;
open ftp://$USER:$PASSWORD@$HOST;
lcd $(pwd);
mirror --reverse --delete --verbose . $REMOTE_PATH;
bye;
"

echo "Despliegue completado."
