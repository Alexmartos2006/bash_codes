#!/bin/bash
clear

#Detener la ejecución si no recibe parámetros.
if [ $# -eq 0 ]
then
	echo "ERROR: no se han introducido parámetros."
	echo
	exit 1
fi

#Mensaje.
echo "GRUPOS DE CADA USUARIO"
echo

#Recorrer la lista de parámetros recibidos y almacenarlo en la variable usuario.
for usuario in $*
do
	#Te dice los grupos de los usuarios.
	groups $usuario 2>/dev/null

		#Mensaje que se muestra si hay un fallo en el anterior comando.
		if [ $? -ne 0 ]
		then
			echo "El usuario '$usuario' no se encontró en el sistema"
		fi
		
done

echo
echo "PROCESO FINALIZADO"