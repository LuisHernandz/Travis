# deploy.sh
# Cambia FTP_ADDRESS con tu servidor y ruta correctos

curl --keepalive-time 60 -u u325260710:Ftp123** --ftp-create-dirs -T README.md ftp://195.179.238.210/domains/luishs.com/public_html/travis2/README.md

