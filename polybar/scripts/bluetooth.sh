#!/bin/bash

bluetooth_icon() {
    if bluetoothctl show | grep -q "Powered: yes"; then
        if bluetoothctl devices Connected | grep -q "Device"; then
            echo ""  # Ícono de Bluetooth conectado
        else
            echo ""  # Ícono de Bluetooth encendido pero no conectado
        fi
    else
        echo ""  # Ícono de Bluetooth apagado
    fi
}

bluetooth_icon

