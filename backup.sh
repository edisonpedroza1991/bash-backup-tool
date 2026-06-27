#!/bin/bash

#ruta /Users/edisonpedroza/devops-semanal/ejercicios1/backups_proyecto
#ruta_script /Users/edisonpedroza/devops-semanal/backup.sh

FECHA=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVO_LOG="/Users/edisonpedroza/devops-semanal/ejercicios1/backup.log"
ARCHIVO_DESTINO="/Users/edisonpedroza/devops-semanal/ejercicios1/backups_tar_gz/respaldo_backups_$FECHA.tar.gz"
CARPETA_DESTINO="/Users/edisonpedroza/devops-semanal/ejercicios1/backups_tar_gz"
CARPETA_ORIGEN="/Users/edisonpedroza/devops-semanal/ejercicios1/backups_proyecto"

if [ ! -d "$CARPETA_DESTINO" ]; then
    mkdir -p "$CARPETA_DESTINO"
fi

if   [ -d "$CARPETA_ORIGEN" ]; then
    tar -czf "$ARCHIVO_DESTINO" "$CARPETA_ORIGEN"
    echo "Backup creado en: $ARCHIVO_DESTINO"
    echo "[ $FECHA ] backup creado: $ARCHIVO_DESTINO" >> "$ARCHIVO_LOG"
else
    echo "ERROR: no existe la carpeta a respaldar"
    echo "[ $FECHA ] ERROR: no existe la carpeta a respaldar" >> "$ARCHIVO_LOG"

fi
