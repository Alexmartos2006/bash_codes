#|/bin/bash

clear
echo "Alejandro Martos Rey"
echo "Unidad 7 - Actividad 6"
echo " "

#Primera parte.
echo "Idetificador del Usuario: $UID"
echo "Código del Usuario: $USER"
echo "Ruta del Directorio Personal: $PWD"
echo "Rutas Inlcuidas en PATH: $PATH"
echo " "

inicio=$pwd

#Segunda parte.
echo -e "Nombre del Script:\t $0"
echo -e "Número Parámetros:\t $#"
echo -e "Primer Parámetro:\t $1"
echo -e "Segundo Parámetro:\t $2"
echo -e "Todos los Parámetros:\t $*"
echo " "
#Tercera parte.

echo -n "Introduce el nombre de un archivo: "
read nombre_de_archivo

#Creación de directorio 1.
echo "Creando el directorio: $1"
mkdir $1
echo "Resultado Operación: $?"
cd $1
echo "Directorio Actual: $PWD"
echo "Creado el directorio: $1"
echo " "

#Creación de directorio 2.
mkdir $2
echo "Resultado Operación: $?"
cd $2
echo "Directorio Actual: $PWD"

#Creación de archivo 1.
echo "Creando el archivo: $nombre_de_archivo"
touch $nombre_de_archivo

#Muestra resultado final.
cd ../../
echo "Se ha creado la siguiente estructura:"
echo " "

tree $1

echo "PROCESO FINALIZADO."



