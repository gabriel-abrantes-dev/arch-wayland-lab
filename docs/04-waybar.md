# 04 — Waybar

## Papel

A waybar é um cliente Wayland que desenha módulos (workspaces, clock, tray…). No Hyprland ela costuma subir via `exec-once` em `30-autostart.conf`.

## Arquivos neste lab

| Arquivo | Função |
|---------|--------|
| `config/waybar/config.jsonc` | layout e módulos |
| `config/waybar/style.css` | visual (usa variáveis Catppuccin) |
| `config/waybar/macchiato.css` | paleta (referência / include opcional) |
| `config/waybar/NOTES.md` | decisões de design |

## Recarregar

Com `reload_on_style_change` / `reload_style_on_change` ativos, salvar o CSS/JSONC já recarrega. Senão:

```bash
killall waybar; waybar &
```

## Exercício

Adicione `"pulseaudio"` (ou `"network"`) em `modules-right` e configure o bloco correspondente na wiki da waybar. Relacione o módulo com PipeWire (`wpctl status`).
