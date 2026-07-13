# 03 — Hyprland modular

## Por que modularizar

Um único `hyprland.conf` gigante mistura monitores, estética e binds. No lab, o entrypoint só faz `source` dos módulos em `conf.d/`:

| Arquivo | Assunto |
|---------|---------|
| `00-monitors.conf` | resolução, posição, escala |
| `10-env.conf` | variáveis de sessão |
| `20-programs.conf` | `$terminal`, `$menu`, etc. |
| `30-autostart.conf` | `exec-once` |
| `40-look.conf` | gaps, blur, animações, layouts |
| `50-input.conf` | teclado, mouse, gestos |
| `60-keybinds.conf` | atalhos |
| `70-windows.conf` | window rules |

Detalhes e “por quês”: [config/hypr/NOTES.md](../config/hypr/NOTES.md).

## Ciclo de edição

```bash
# edite um módulo
$EDITOR config/hypr/conf.d/40-look.conf

# se já linkou:
hyprctl reload

# ou teste sem linkar (caminho absoluto):
# hyprctl reload  # só vale se ~/.config/hypr apontar para o lab
```

## Wiki oficial

- https://wiki.hypr.land/Configuring/
- Monitores: https://wiki.hypr.land/Configuring/Monitors/
- Binds: https://wiki.hypr.land/Configuring/Binds/

## Exercício

1. Em `40-look.conf`, mude `gaps_out` (ex.: de `1` para `8`).
2. `hyprctl reload`.
3. Observe as bordas das janelas.
4. Deixe um comentário `# aprendido: gaps_out controla ...` no arquivo.
