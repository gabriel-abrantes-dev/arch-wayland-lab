# 06 — systemd user e autostart

## Duas formas de subir coisas

| Abordagem | Quando usar |
|-----------|-------------|
| `exec-once` no Hyprland | Apps ligados à sessão gráfica (waybar, hyprpaper, applets) |
| `systemctl --user` | Daemons que devem viver com o login (PipeWire já vem assim) |

No lab, autostart gráfico está em `config/hypr/conf.d/30-autostart.conf`.

## Comandos

```bash
systemctl --user status pipewire wireplumber
systemctl --user list-units --type=service --state=running
loginctl show-session "$XDG_SESSION_ID" -p Type -p Desktop
```

## Portals

Screenshare e diálogos modernos dependem de `xdg-desktop-portal` + `xdg-desktop-portal-hyprland`. Se faltar, apps Electron/Firefox podem falhar ao compartilhar tela.

## Exercício

1. Liste o que sobe no `exec-once`.
2. Decida o que é “UI da sessão” vs “daemon de sistema”.
3. Remova um `exec-once` desnecessário (ex.: app que você abre sob demanda) e recarregue.
