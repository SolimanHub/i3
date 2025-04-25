#!/bin/bash
battery_path="/sys/class/power_supply/BAT0"

# Verificar existencia de la batería
if [ ! -d "$battery_path" ]; then
    echo " N/A"
    exit 0
fi

status=$(cat "$battery_path/status")
capacity=$(cat "$battery_path/capacity")

# Definir colores dinámicos
if [ "$status" == "Charging" ]; then
    color="#8be9fd"  # Azul neón
    icon=""
elif [ $capacity -le 20 ]; then
    color="#ff5555"  # Rojo neón
    icon=""
else
    color="#50fa7b"  # Verde neón
    icon=""
fi

echo "%{F$color}$icon%{F-}  $capacity%"
