# deploy.sh
# Cambia FTP_ADDRESS con tu servidor y ruta correctos

find . -type f -exec curl -v -u $FTP_USER:$FTP_PASS --ftp-create-dirs -T {} --max-time 9999 ftp://195.179.238.210/travis2/{} \;
