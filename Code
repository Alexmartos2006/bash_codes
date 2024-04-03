#!/bin/bash

PIEDRA=1
PAPEL=2
TIJERA=3

clear

opcion_texto() {
	case "$1" in
		1) echo "Piedra";;
		2) echo "Papel";;
		3) echo "Tijeras";;
	esac
}

seleccion_usuario() {
	echo "Selecciona una opción:"
	echo "1. Piedra"
	echo "2. Papel"
	echo "3. Tijera"
	echo -n "Indica un número: "
	read -n1 -r seleccion
	echo " "
	
		case $seleccion in
			[1-3])
			;;

			*)
				echo "                                                 "
				echo "	███████╗ ██████╗  ██████╗    █████    ██████╗  "
				echo "	██╔════╝ ██╔══██╗ ██╔══██  ██╔════██║ ██╔══██  "
				echo "	███████  ██████╔╝ ██████╔╝ ██║    ██║ ██████╔╝ "
				echo "	██╔════╝ ██╔══██╗ ██╔══██╗ ██║    ██║ ██╔══██╗ "
				echo "	███████╗ ██║  ██║ ██║  ██║   █████╔╝  ██║  ██║ "
				echo "       ════════════════════════════════════════════════" 
				echo " "
				echo "Debes indicar un número entre 1 y 3"
			exit 
			;;
		esac	
}

seleccion_maquina() {
	respuesta=$((RANDOM % 3 + 1))
	echo "$respuesta"
}

elegir_ganador() {
	case "$respuesta_maquina" in
        1)
		case "$seleccion" in
			1)
				echo "El usuario ha elegido Piedra"
				echo "Empate"
				;;
			2)
				echo "El usuario ha elegido Papel"
				echo "*Ganas*"
				;;
			3)
				echo "El usuario ha elegido Tijeras"
				echo "Pierdes :("
				;;
			*)
				echo "Se debe de introducir un número entre el 1-3"
				;;
		esac
		;;
	2)
		case "$seleccion" in
			1) 
				echo "El usuario ha elegido Piedra"
				echo "Pierdes :("
				;;
			2)
				echo "El usuario ha elegido Papel"
				echo "Empate"
				;;
			3)
				echo "El usuario ha elegido Tijeras"
				echo "*Ganas*"
				;;
			*)
				echo "Se debe de introducir un número entre el 1-3"
				;;
		esac
		;;
	3)
		case "$seleccion" in
			1)
				echo "El usuario ha elegido Piedra"
				echo "*Ganas*"
				;;
			2)
				echo "El usuario ha elegido Papel"
				echo "Pierdes :("
				;;
			3)
				echo "El usuario ha elegido Tijeras"
				echo "Empate"
				;;
			*)
				echo "Se debe de introducir un número entre el 1-3"
				;;
		esac
		;;
	esac
}



seleccion_usuario

respuesta_maquina=$(seleccion_maquina)

echo "La respuesta de la máquina es: $(opcion_texto "$respuesta_maquina")"

elegir_ganador "$seleccion" "$respuesta_maquina"
