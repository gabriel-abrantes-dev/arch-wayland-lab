# 01 — Arch basics para o desktop

## O que gerenciar

No Arch, o desktop Wayland é um conjunto de pacotes + arquivos em `~/.config` + (opcional) units systemd de usuário.

| Camada | Ferramenta | Exemplo |
|--------|------------|---------|
| Pacotes | `pacman` / AUR helper | `hyprland`, `waybar` |
| Config de usuário | `~/.config/...` | `hypr/hyprland.conf` |
| Runtime | sessão gráfica | `WAYLAND_DISPLAY` |
| Serviços | `systemctl --user` | pipewire, portals |

## Comandos úteis

```bash
# o que está instalado da stack
./scripts/check-stack.sh

# info de um pacote
pacman -Qi hyprland

# quem dona um binário
pacman -Qo $(command -v hyprland)

# atualizar (com consciência)
sudo pacman -Syu
```

## Onde a config “oficial” deste lab vive

- Fonte: `config/` neste repositório
- Destino após link: `~/.config/hypr`, `~/.config/waybar`, `~/.config/kitty`

A lista de pacotes esperados está em [packages/pacman.txt](../packages/pacman.txt).

## Exercício

1. Rode `./scripts/check-stack.sh`.
2. Anote o que falta (ex.: `brightnessctl`).
3. Instale só o que for usar: `sudo pacman -S <pacote>`.
