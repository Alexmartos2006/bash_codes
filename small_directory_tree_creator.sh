#/bin/bash

clear

echo -e "Nombre del Script:\t $0"
echo -e "Número Parámetros:\t $#"
echo -e "Primer Parámetro:\t $1"
echo -e "Segundo Parámetro:\t $2"
echo -e "Todos los Parámetros:\t $*"
echo " "

echo -n "Introduce el nombre de un archivo: "
read nombre_de_archivo

#Creación del primer directorio.
echo "Creando el directorio: $1"
mkdir $1
echo "Resultado Operación: $?"
cd $1
echo "Directorio Actual: $PWD"
echo " "

#Creación del segundo directorio.
echo "Creando el directorio: $2"
mkdir $2
echo "Resultado Operación: $?"
cd $2
echo "Directorio Actual: $PWD"
echo " "

#Creación del archivo.
echo "Creando el archivo: $nombre_de_archivo"
touch $nombre_de_archivo
echo " "

cd ../../
echo "Se ha creado la siguiente estructura:"
echo " "

tree $1
echo " "

echo "PROCESO FINALIZADO."
