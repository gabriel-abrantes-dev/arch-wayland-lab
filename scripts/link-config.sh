#!/usr/bin/env bash
# Liga config/ do lab em ~/.config com backup timestampado.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_ROOT="${XDG_CONFIG_HOME:-$HOME/.config}/.arch-wayland-lab-backup-$STAMP"

link_one() {
  local name="$1"
  local src="$ROOT/config/$name"
  local dest="${XDG_CONFIG_HOME:-$HOME/.config}/$name"

  if [[ ! -d "$src" ]]; then
    echo "skip: $src não existe"
    return
  fi

  mkdir -p "$(dirname "$dest")"
  if [[ -e "$dest" || -L "$dest" ]]; then
    mkdir -p "$BACKUP_ROOT"
    mv "$dest" "$BACKUP_ROOT/$name"
    echo "backup: $dest → $BACKUP_ROOT/$name"
  fi

  ln -s "$src" "$dest"
  echo "link:   $dest → $src"
}

echo "Lab: $ROOT"
link_one hypr
link_one waybar
link_one kitty
echo
echo "Pronto. Recarregue: hyprctl reload"
echo "Backups (se houver): $BACKUP_ROOT"
