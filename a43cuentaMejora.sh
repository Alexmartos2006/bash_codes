#!/bin/bash
clear

#Detener la ejecución del script si recibe algún parámetro.
if [ $# -ne 0 ]
then
	echo "El script no debe de contener ningún parámetro."
	echo
	exit 1
fi


#Se muestra el directorio actual.
echo "Directorio Actual: '$PWD'."
echo


#Mira todos los arhcivos del directorio.
for arch in $(ls)
do
	#Identifica si es un fichero.
	if [ -f $arch ]
	then
		echo "El archivo '$arch' tiene '$lin' líneas."
	fi
		#Para poder contar el número de líneas de un arhcivo.
		lin=$(cat $arch 2>/dev/null | wc -l)
done

#Mostrar último mensaje.
echo
echo "PROCESO FINALIZADO"
echo