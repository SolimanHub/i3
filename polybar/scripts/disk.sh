#!/bin/bash

get_disk_usage() {
    df -h / | awk 'NR==2{print $5}' | tr -d '%'
}

usage=$(get_disk_usage)

# Definir colores y iconos según uso
if [[ $usage -lt 60 ]]; then
    icon="%{F#50fa7b}%{F-}"  # Verde neón (<60%)
    status="%{F#8be9fd}$usage%%%{F-}"
elif [[ $usage -ge 60 && $usage -lt 80 ]]; then
    icon="%{F#f1fa8c}%{F-}"  # Amarillo neón (60-79%)
    status="%{F#ffb86c}$usage%%%{F-}"
else
    icon="%{F#ff5555}%{F-}"   # Rojo neón (>80%)
    status="%{F#ff79c6}$usage%%%{F-}"
fi

# Obtener espacio libre y total
free_space=$(df -h / | awk 'NR==2{print $4}')
total_space=$(df -h / | awk 'NR==2{print $2}')

echo "$icon %{F#bd93f9}$free_space%{F-} libre de %{F#6272a4}$total_space%{F-} $status"
