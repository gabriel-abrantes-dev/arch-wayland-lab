# Waybar — notas

Config seed a partir do seu `~/.config/waybar` atual (Catppuccin Macchiato, workspaces em numerais romanos, rewrite de títulos).

## Ideias para estudar

- `modules-left|center|right` = composição da barra
- `hyprland/workspaces` fala com o compositor via IPC
- `tray` precisa de apps que exponham StatusNotifier
- Cores: variáveis CSS no topo de `style.css` (paleta Macchiato)

## Não linkar às cegas

Se você editar waybar só no lab, use `./scripts/link-config.sh` para publicar. O script faz backup de `~/.config/waybar` antes.
