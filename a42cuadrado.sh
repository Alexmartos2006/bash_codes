#!/bin/bash
clear

#Detener si no recibe un parámetro.
if [ $# -ne 1 ]
then
	echo "ERROR: El script tiene que contener un parámetro."
	echo
	exit 1
fi

#Detener la ejecución si el párametro es menor o igual a 1 o 25.
if [ $1 -le 0 ] || [ $1 -gt 25 ]
then
	echo "El número tiene que estar entre 1 y 25"
		echo
		exit 1
fi

#Creación de variable.
alto=$1

#Ejecución del bucle.
while [ $alto -gt 0 ]
do
	ancho=$1
		while [ $ancho -gt 0 ]
		do
			let ancho=$ancho-1
			echo -n "* "
		done
	echo
	let	alto=$alto-1
done

echo
echo "PROCESO FINALIZADO."