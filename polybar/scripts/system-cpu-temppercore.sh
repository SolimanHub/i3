#!/usr/bin/bash

get_cpu_temp() {
    sensors | grep 'CPU' | awk '{print $2}' | tr -d "+°C" | head -n1 | awk -F. '{print $1}'
}

# Obtener temperatura como entero
temp=$(get_cpu_temp)

# Definir iconos según la temperatura
icon=""
if [[ $temp -lt 50 ]]; then
    icon="%{F#6DD3E0}%{F-}"  # Frío (azul)
elif [[ $temp -ge 50 && $temp -lt 70 ]]; then
    icon="%{F#7FE3C0}%{F-}"  # Normal (verde)
elif [[ $temp -ge 70 && $temp -lt 85 ]]; then
    icon="%{F#FFA940}%{F-}"  # Caliente (naranja)
else
    icon="%{F#FF5252}%{F-}"  # Crítico (rojo)
fi

# Mostrar resultado (icono + temperatura en enteros)
echo "$icon ${temp}°C"
