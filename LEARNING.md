# Trilha de aprendizado

Ordem sugerida. Cada etapa tem leitura + exercício concreto no seu Hyprland.

| # | Doc | Objetivo | Exercício |
|---|-----|----------|-----------|
| 1 | [docs/01-arch-basics.md](docs/01-arch-basics.md) | Pacotes, updates, onde mora a config | Listar a stack com `./scripts/check-stack.sh` |
| 2 | [docs/02-wayland.md](docs/02-wayland.md) | O que é Wayland vs X11 | Rodar `echo $XDG_SESSION_TYPE` e `hyprctl monitors` |
| 3 | [docs/03-hyprland.md](docs/03-hyprland.md) | Compositor modular | Mudar um gap em `conf.d/40-look.conf` e `hyprctl reload` |
| 4 | [docs/04-waybar.md](docs/04-waybar.md) | Barra e módulos | Adicionar um módulo (ex.: `battery` ou `network`) |
| 5 | [docs/05-terminal-and-apps.md](docs/05-terminal-and-apps.md) | Terminal, launcher, apps | Trocar `$menu` ou `$terminal` em `20-programs.conf` |
| 6 | [docs/06-systemd-user.md](docs/06-systemd-user.md) | Serviços de usuário | Preferir `exec-once` consciente vs unit user |

## Como estudar um módulo de config

1. Abra o arquivo em `config/hypr/conf.d/`.
2. Leia o cabeçalho e os comentários inline.
3. Confira o “por quê” em `config/hypr/NOTES.md`.
4. Altere **uma** coisa, recarregue, observe.
5. Anote o resultado (pode ser um comentário `# aprendido:` no próprio arquivo).

## Fluxo seguro de aplicação

```text
editar no lab → link-config.sh (backup) → hyprctl reload → validar
```

Não edite só em `~/.config` se quiser manter o lab como fonte da verdade.
