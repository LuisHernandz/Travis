# deploy.sh
# Cambia FTP_ADDRESS con tu servidor y ruta correctos
find . -type f -exec curl -u $FTP_USER:$FTP_PASS --ftp-create-dirs -T {} ftp://195.179.238.210/travis2/{} \;
