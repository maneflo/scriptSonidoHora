# Sonido de la Hora como el reloj de madera (no funciona - por ahora es solo una experiencia de aprendizaje)
 Script en bash para que suene a la hora y la media hora, comparto los sonidos de campanas obtenidos de freesound.org
 ## los link de los sonidos
 https://freesound.org/people/Martineerok/sounds/148284/  </p>
 https://freesound.org/people/VoxHumanaMusiCurators/sounds/627146/
 ## Qué hace?
 El script se inicia con los sonidos (se pueden cambiar a tu gusto) y luego con el while se mantiene constantemente chequeando los minutos de la hora del sistema, cuando coincide con un 00 toca un sonido y cuando coincide con un 30 toca el otro sonido, simple pero efectivo.
 ## para que se ejecute cuando arranca el PC
 debemos darle permiso de ejecución al script con **chmod +x sonidoHora.sh** y luego agregar en cron con el comando **crontab -e** y luego agregar lo siguiente : <p>  00 * * * *    /ruta_del_script <p> y listo, en el reinicio todo funciona automáticamente.
 
