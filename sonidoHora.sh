#!/user/bin/bash
 
# Archivo de sonido
sonido="/usr/share/sounds/sonido.aiff"
sonido1="/usr/share/sounds/sonido1.wav"

while true; do
  # Obtener la hora actual
  hora_actual=$(date +"%M")
#echo $hora_actual
  # Si el minuto es 00, reproducir el sonido
  if [[ $hora_actual -eq 00 ]]; then
    paplay "$sonido" & 
  fi
# sonido para la media hora
	if [[ $hora_actual -eq 30 ]]; then 
	paplay "$sonido1" &
	fi
	
  # Esperar 60 segundos
  sleep 60
done
