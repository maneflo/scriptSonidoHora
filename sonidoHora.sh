#!/bin/bash

# Archivo de sonido
sonido="/usr/share/sounds/sonido.aiff"
sonido1="/usr/share/sounds/sonido1.wav"

while true; do
  # Obtener la hora actual
  hora_actual=$(date +"%H:%M")
#pruebas para ver porque no sonaba cuando quería. lo que me tiraba gemini no dió los resultados.
#echo $hora_actual
  minutos=$(echo "$hora_actual" | cut -c 4-5)
#echo $minutos
  # Si el minuto es 00  reproducir el sonido
  if [[ "$minutos" -eq 00  ]]; then
    paplay "$sonido" &
  fi
#echo "hora "
  # Si el minuto es 30, reproducir el sonido1
  if [[ "$minutos" -eq 30 ]]; then
    paplay "$sonido1" &
  fi
#echo "mediaHOra"
  # Esperar 60 segundos
  sleep 60
done

