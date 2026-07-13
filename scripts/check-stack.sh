#!/usr/bin/env bash
# Verifica sessão Wayland e pacotes/binários da stack.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PKG_FILE="$ROOT/packages/pacman.txt"

ok=0
warn=0

section() { printf '\n== %s ==\n' "$1"; }

section "Sessão"
printf 'XDG_SESSION_TYPE=%s\n' "${XDG_SESSION_TYPE:-<unset>}"
printf 'XDG_CURRENT_DESKTOP=%s\n' "${XDG_CURRENT_DESKTOP:-<unset>}"
printf 'WAYLAND_DISPLAY=%s\n' "${WAYLAND_DISPLAY:-<unset>}"

if [[ "${XDG_SESSION_TYPE:-}" == "wayland" ]]; then
  echo "[ok] sessão Wayland"
  ((ok++)) || true
else
  echo "[!!] sessão não é wayland (ok se rodou fora da GUI)"
  ((warn++)) || true
fi

section "Binários"
bins=(hyprland waybar kitty wofi hyprpaper hyprctl wpctl)
for b in "${bins[@]}"; do
  if command -v "$b" >/dev/null 2>&1; then
    echo "[ok] $b → $(command -v "$b")"
    ((ok++)) || true
  else
    echo "[!!] $b ausente"
    ((warn++)) || true
  fi
done

section "Pacotes (pacman.txt)"
if command -v pacman >/dev/null 2>&1 && [[ -f "$PKG_FILE" ]]; then
  while read -r pkg || [[ -n "${pkg:-}" ]]; do
    [[ -z "$pkg" || "$pkg" =~ ^# ]] && continue
    if pacman -Q "$pkg" >/dev/null 2>&1; then
      echo "[ok] $pkg ($(pacman -Q "$pkg"))"
      ((ok++)) || true
    else
      echo "[!!] $pkg não instalado"
      ((warn++)) || true
    fi
  done < "$PKG_FILE"
else
  echo "[!!] pacman ou pacman.txt indisponível"
  ((warn++)) || true
fi

section "Resumo"
echo "ok=$ok  avisos=$warn"
[[ "$warn" -eq 0 ]]
