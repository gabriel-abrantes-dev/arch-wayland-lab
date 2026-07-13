# 02 — Wayland (conceitos)

## Ideia central

No X11, um servidor X centraliza janelas, input e desenho. No **Wayland**, o **compositor** (aqui: Hyprland) é o servidor: ele compõe superfícies, trata input e fala com clientes via protocolo Wayland.

## Variáveis que importam

```bash
echo "$XDG_SESSION_TYPE"      # deve ser wayland
echo "$XDG_CURRENT_DESKTOP"   # Hyprland
echo "$WAYLAND_DISPLAY"       # wayland-1, etc.
```

No lab, isso também é reforçado em `config/hypr/conf.d/10-env.conf`.

## Peças típicas de um desktop Wayland

| Peça | Função |
|------|--------|
| Compositor | Hyprland |
| Portal | `xdg-desktop-portal-hyprland` (screenshare, file picker) |
| Áudio | PipeWire + WirePlumber |
| Barra | waybar (cliente Wayland) |
| Notificações | mako / dunst (opcional) |
| Launcher | wofi / fuzzel / rofi-wayland |

## XWayland

Apps que ainda falam X11 rodam via **XWayland** dentro da sessão Wayland. Regras de janela no Hyprland podem tratar `xwayland = true` de forma especial (veja `70-windows.conf`).

## Exercício

```bash
hyprctl monitors
hyprctl clients | head
hyprctl version
```

Relacione: um *monitor* é saída física; um *client* é uma janela/app.
