#!/bin/bash

#ruta /Users/edisonpedroza/practica_linux/ejercicios1/backups_proyecto
#ruta_script /Users/edisonpedroza/devops-semanal/backup.sh

FECHA=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVO_DESTINO="/Users/edisonpedroza/devops-semanal/ejercicios1/backups_tar_gz/respaldo_backups_$FECHA.tar.gz"
CARPETA_DESTINO="/Users/edisonpedroza/devops-semanal/ejercicios1/backups_tar_gz"
CARPETA_ORIGEN="/Users/edisonpedroza/devops-semanal/ejercicios1/backups_proyecto"

if [ ! -d "$CARPETA_DESTINO" ]; then
    mkdir -p "$CARPETA_DESTINO"
fi

if   [ -d "$CARPETA_ORIGEN" ]; then
    tar -czf "$ARCHIVO_DESTINO" "$CARPETA_ORIGEN"
    echo "Backup creado en: $ARCHIVO_DESTINO"
else
    echo "ERROR: no existe la carpeta a respaldar"
fi
