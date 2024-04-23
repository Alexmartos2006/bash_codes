#!/bin/bash

clear

#Si no eres superusuario se detiene.
if [ $USER != root ]
	then
		echo -e "No puedes ejecutar este script sin ser superusuario.\n"
	exit 1
fi

#Si no recibe ningún parámetro.
if [ $# -eq 0 ]
	then
		echo -e "Debes de introducir un parámetro.\n"
	exit 1
fi

# Identifica si el recurso es un directorio o un fichero.
# Comprobar si el recurso exite.
if [ ! -e $1 ]
then
	echo -e "El recurso $1 no existe en el directorio actual $PWD.\n"
	exit 1
fi
	# Si el recurso existe.

	# Comprobar si es un directorio.
	if [ -d $1 ]
	then
		# Es un directorio

		echo "¿Seguro que quieres borrar el directorio $1 [s/n]?"
		read -n 1 -e respuesta_usuario \n
			#Si dices que Si es un directorio.
			if [ $respuesta_usuario = "s" ] || [ $respuesta_usuario = "S" ]
			then
				rm -r $1
				echo -e "El directorio $1 se a borrado correctamente.\n"
 			else
			#Si dices que No.
       			echo -e "Operación cancelada. No se han hecho cambios.\n"
   			fi

	#Comprobar si es un fichero.
	elif [ -f $1 ]
		then
		#Es un fichero 
		echo "¿Seguro que quieres borrar el fichero $1 [s/n]?"
		read -n 1 -e respuesta_usuario \n
			#Si dices que Si es un fichero.
			if [ $respuesta_usuario = "s" ] || [ $respuesta_usuario = "S" ]
			then
				rm -r $1
				echo -e "El fichero $1 se a borrado correctamente.\n"
 			else
			#Si dices que No es un fichero.
       			echo -e "Operación cancelada. No se han hecho cambios.\n"
   			fi
fi

echo "PROCESO FINALIZADO"
echo 
