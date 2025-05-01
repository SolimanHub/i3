# Configuracion para i3wm y polybar

> He tomado como referencia el trabajo de [GerrySoft](https://github.com/GerrySoft) para la elavoracion de mis configuraciones.

### Algunos comandos personales

| shortcut                    | Descripcion                                                         |
|-----------------------------|---------------------------------------------------------------------|
| $mod+u                      | Subir volumen                                                       |
| $mod+i                      | Bajar volumen                                                       |
| $mod+Shift+i                | Bajar brillo                                                        |
| $mod+Shift+u                | Subir brillo                                                        |
| $mod+Shift+a                | Disminuir gaps internos y externos                                  |
| $mod+Shift+g                | Aumentar gaps internos y externos                                   |
| $mod+f                      | Lanzar Firefox Developer Edition                                    |
| $mod+g                      | Lanzar Google Chrome                                                |
| $mod+mod1+t                 | Lanzar Thunar (gestor de archivos)                                  |
| $mod+1                      | Ir al espacio de trabajo 1                                          |
| $mod+2                      | Ir al espacio de trabajo 2                                          |
| $mod+3                      | Ir al espacio de trabajo 3                                          |
| $mod+4                      | Ir al espacio de trabajo 4                                          |
| $mod+5                      | Ir al espacio de trabajo 5                                          |
| $mod+6                      | Ir al espacio de trabajo 6                                          |
| $mod+7                      | Ir al espacio de trabajo 7                                          |
| $mod+8                      | Ir al espacio de trabajo 8                                          |
| $mod+9                      | Ir al espacio de trabajo 9                                          |
| $mod+0                      | Ir al espacio de trabajo 0                                          |
| $mod+Shift+1                | Mover ventana al espacio de trabajo 1                               |
| $mod+Shift+2                | Mover ventana al espacio de trabajo 2                               |
| $mod+Shift+3                | Mover ventana al espacio de trabajo 3                               |
| $mod+Shift+4                | Mover ventana al espacio de trabajo 4                               |
| $mod+Shift+5                | Mover ventana al espacio de trabajo 5                               |
| $mod+Shift+6                | Mover ventana al espacio de trabajo 6                               |
| $mod+Shift+7                | Mover ventana al espacio de trabajo 7                               |
| $mod+Shift+8                | Mover ventana al espacio de trabajo 8                               |
| $mod+Shift+9                | Mover ventana al espacio de trabajo 9                               |
| $mod+Shift+0                | Mover ventana al espacio de trabajo 0                               |
| $mod+Tab                    | Ir al siguiente espacio de trabajo                                  |
| $mod+Shift+Tab              | Ir al espacio de trabajo anterior                                   |
| $mod+Shift+c                | Recargar configuración de i3                                        |
| $mod+Shift+r                | Reiniciar i3                                                        |
| $mod+Shift+e                | Salir de i3 (cierra la sesión)                                      |
| $mod+r                      | Entrar en modo de redimensionado                                    |
| $mod+Return                 | Abrir terminal (alacritty)                                          |
| $mod+Shift+q                | Cerrar ventana enfocada                                             |
| $mod+d                      | Lanzador de aplicaciones (rofi -show drun)                          |
| $mod+c                      | Lanzador de ventanas (rofi -show window)                            |
| $mod+Shift+p                | Lanzador de ventanas con tema personalizado                         |
| $mod+j                      | Enfocar ventana a la izquierda                                      |
| $mod+k                      | Enfocar ventana abajo                                               |
| $mod+l                      | Enfocar ventana arriba                                              |
| $mod+semicolon              | Enfocar ventana a la derecha                                        |
| $mod+Left                   | Enfocar ventana a la izquierda (con flecha)                         |
| $mod+Down                   | Enfocar ventana abajo (con flecha)                                  |
| $mod+Up                     | Enfocar ventana arriba (con flecha)                                 |
| $mod+Right                  | Enfocar ventana a la derecha (con flecha)                           |
| $mod+Shift+j                | Mover ventana enfocada a la izquierda                               |
| $mod+Shift+k                | Mover ventana enfocada abajo                                        |
| $mod+Shift+l                | Mover ventana enfocada arriba                                       |
| $mod+Shift+semicolon        | Mover ventana enfocada a la derecha                                 |
| $mod+Shift+Left             | Mover ventana enfocada a la izquierda (con flecha)                  |
| $mod+Shift+Down             | Mover ventana enfocada abajo (con flecha)                           |
| $mod+Shift+Up               | Mover ventana enfocada arriba (con flecha)                          |
| $mod+Shift+Right            | Mover ventana enfocada a la derecha (con flecha)                    |
| $mod+h                      | Dividir contenedor en horizontal                                    |
| $mod+v                      | Dividir contenedor en vertical                                      |
| $mod+Shift+f                | Activar/desactivar pantalla completa                                |
| $mod+s                      | Cambiar a modo apilado (stacking)                                   |
| $mod+w                      | Cambiar fondo de pantalla (script wall4)                            |
| $mod+e                      | Alternar disposición entre horizontal/vertical                      |
| $mod+Shift+space            | Alternar ventana flotante/tiling                                    |
| $mod+Shift+s                | Alternar sticky (ventana siempre visible)                           |
| $mod+space                  | Cambiar el modo entre tiling y floating                             |
| $mod+a                      | Enfocar el contenedor padre                                         |
| Shift+Print                 | Captura de región y copia al portapapeles (scregcp -s ...)          |
| Print                       | Captura de pantalla y copia al portapapeles (scregcp ...)           |
| XF86MonBrightnessDown       | Bajar brillo (brightnessctl)                                        |
| XF86MonBrightnessUp         | Subir brillo (brightnessctl)                                        |
| XF86AudioRaiseVolume        | Subir volumen                                                       |
| XF86AudioLowerVolume        | Bajar volumen                                                       |
| XF86AudioMute               | Mutear volumen                                                      |
| XF86AudioMicMute            | Mutear micrófono                                                    |
| $mod+XF86AudioRaiseVolume   | Subir volumen sink 1                                                |
| $mod+XF86AudioLowerVolume   | Bajar volumen sink 1                                                |
| $mod+XF86AudioMute          | Mutear volumen sink 1                                               |
| $mod+XF86AudioMicMute       | Mutear micrófono                                                    |

### Instalar

Para asegurar el correcto funcionamiento del sistema, instala estos paquetes:

```bash
sudo pacman -S polybar xorg-fonts-misc siji-git ttf-unifont pactl pulseaudio nm-applet 

# Instalar i3-battery-popup para notificaciones de batería
yay -S i3-battery-popup 

# Instalar Rofi para el lanzador de aplicaciones
yay -S rofi 

# Instalar picom para el compositor
sudo pacman -S picom 

# Instalar dunst para el daemon de notificaciones
sudo pacman -S dunst 

# Instalar feh para el fondo de pantalla
sudo pacman -S feh 

# Instalar gnome-screenshot para capturas de pantalla
sudo pacman -S gnome-screenshot 

# Instalar scregcp para captura de pantalla y copiar al portapapeles
# Este comando podría variar dependiendo de la fuente de scregcp, asegúrate de buscar el método correcto para instalarlo.

# Instalar brightnessctl para ajustar la luminosidad
sudo pacman -S brightnessctl 

# Instalar alacritty para el terminal
sudo pacman -S alacritty 

# Instalar firefox-developer-edition para el navegador
sudo pacman -S firefox-developer-edition 

# Instalar thunar para el gestor de archivos
sudo pacman -S thunar 
``` 

#### Polybar

Crear enlace simbolico en .config
```bash
ln -s $HOME/.config/i3/polybar $HOME/.config/polybar
```

Para asegurar el correcto funcionamiento de tu configuración de Polybar, instala estos paquetes en Arch Linux:

```bash
sudo pacman -S polybar alsa-lib cairo curl jsoncpp libmpdclient libnl libpulse libuv xcb-util-cursor xcb-util-image xcb-util-wm xcb-util-xrm fontconfig

# Soporte para i3wm (necesario para el módulo de workspaces y tray)
sudo pacman -S i3-wm

# Fuentes recomendadas para tu configuración visual y de iconos
sudo pacman -S ttf-terminus-nerd ttf-roboto ttf-font-awesome

# Herramientas y utilidades mencionadas en módulos/scripts personalizados:
sudo pacman -S blueberry bluez-utils networkmanager alsa-utils python
```

Notas:
- Instala también cualquier otra fuente o paquete necesario para los iconos de Font Awesome 6 (puedes encontrarlo en AUR como `ttf-font-awesome` o `otf-font-awesome` según disponibilidad).
- Los módulos personalizados usan scripts ubicados en `~/.config/i3/polybar/scripts/`. Asegúrate de tener estos scripts y de que sus dependencias (por ejemplo, `bash`, `lm_sensors`, etc.) estén disponibles.
- Para la integración de Bluetooth, asegúrate de tener habilitado y funcionando `bluez` y su frontend `blueberry`:
```bash
sudo pacman -S bluez bluez-utils blueberry
sudo systemctl enable --now bluetooth
```
- Para el control de red desde la barra, asegúrate de tener `networkmanager` y `nmcli`.

Con estos paquetes tendrás funcionando todos los módulos referenciados en tu configuración de Polybar.
