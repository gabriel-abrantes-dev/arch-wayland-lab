# Hyprland — notas de aprendizado

Este diretório é o **modelo** da sua sessão. O entrypoint `hyprland.conf` só inclui os módulos em `conf.d/`.

## Mapa mental

```text
sessão Wayland
  └─ Hyprland (lê hyprland.conf → conf.d/*)
       ├─ monitores / input / look
       ├─ keybinds → apps ($terminal, $menu)
       └─ exec-once → waybar, hyprpaper, applets
```

## Decisões herdadas do seu setup atual

- **Terminal:** kitty  
- **File manager:** nemo  
- **Launcher:** wofi  
- **Barra / wallpaper:** waybar + hyprpaper  
- **Áudio nos binds:** `wpctl` (PipeWire)  
- **Layout:** dwindle  
- **Modificador:** SUPER  

## Correção consciente no lab

No config ao vivo havia `monitor=,1920x0180,0x0,1` (typo `0180`). No módulo `00-monitors.conf` usamos `1920x1080`. Ajuste se o seu monitor for outro:

```bash
hyprctl monitors
```

## Ordem dos sources

Hyprland processa na ordem dos `source`. Por isso os arquivos são numerados (`00` … `70`): programas antes de autostart/binds; look antes de window rules quando faz sentido ler o arquivo linearmente.

## Próximo passo

Leia cada `conf.d/*.conf` de cima a baixo, depois faça o exercício em [docs/03-hyprland.md](../../docs/03-hyprland.md).
