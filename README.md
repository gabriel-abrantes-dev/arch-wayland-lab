# arch-wayland-lab

Modelo de configuração para aprender a gerenciar **Arch Linux + Wayland (Hyprland)**.

A ideia: cada peça do desktop vive em um módulo comentado, com notas de *por quê* — não só *o quê*. Você edita aqui, entende o efeito, e só depois liga em `~/.config`.

## Stack atual

| Peça | Papel |
|------|--------|
| Hyprland | compositor Wayland |
| waybar | barra de status |
| kitty | terminal |
| wofi | launcher |
| hyprpaper | wallpaper |
| PipeWire + WirePlumber | áudio |

## Layout do repositório

```
docs/           trilha de aprendizado (leia na ordem)
config/         modelo modular (fonte da verdade)
  hypr/         compositor + módulos em conf.d/
  waybar/       barra
  kitty/        terminal (versão enxuta para estudo)
packages/       lista explícita de pacotes
scripts/        link e checagem da stack
LEARNING.md     mapa da trilha + exercícios
```

## Começar

1. Leia [LEARNING.md](LEARNING.md).
2. Estude `config/hypr/` módulo a módulo (`conf.d/` + `NOTES.md`).
3. Quando quiser aplicar (faz backup automático):

```bash
./scripts/link-config.sh
```

4. Valide a stack:

```bash
./scripts/check-stack.sh
```

5. Recarregue o Hyprland: `hyprctl reload` (ou relogue a sessão).

## Princípios

- **Um assunto por arquivo** — monitores, input, binds, etc. separados.
- **Comentário = aprendizado** — cada opção importante tem uma linha de contexto.
- **Repo ≠ home cega** — você decide quando linkar; o lab não sobrescreve sem backup.
- **Pacotes explícitos** — a stack mínima está em `packages/pacman.txt`; o snapshot completo do sistema em `packages/pacotes.txt`.
