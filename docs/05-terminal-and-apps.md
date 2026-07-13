# 05 — Terminal e apps

## Variáveis de programa

Em `config/hypr/conf.d/20-programs.conf`:

```conf
$terminal = kitty
$fileManager = nemo
$menu = wofi --show drun
```

Os binds em `60-keybinds.conf` usam essas variáveis (`SUPER+Q` → terminal, `SUPER+R` → menu).

## Kitty neste lab

O `~/.config/kitty/kitty.conf` do sistema costuma ser o default enorme do pacote. Aqui mantemos um **kitty.conf enxuto** para estudo (fonte, tema, Wayland). Se você já customizou o kitty “de verdade”, trate o lab como referência e mescle à mão.

## Launcher

`wofi --show drun` lista apps `.desktop`. Alternativas comuns: `fuzzel`, `rofi -show drun` (build Wayland).

## Exercício

1. Troque `$menu` para outro launcher (se instalado) **ou** adicione um bind novo para um app (ex.: browser).
2. `hyprctl reload` e teste o atalho.
