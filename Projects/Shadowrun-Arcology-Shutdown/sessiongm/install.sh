#!/usr/bin/env bash
# Shadowrun GM Markdown — no arguments, safe copy into the known Obsidian vault.
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
VAULT="/Users/somed/Documents/obs"
DEST="$VAULT/Rpg/Shadowrun-Arcology-Shutdown/sessiongm"
STAMP="$(date '+%Y-%m-%d %H%M%S')"
BACKUP="$VAULT/Backup - Shadowrun-SessionGM - $STAMP"
if [[ ! -d "$VAULT" ]]; then
  echo "Obsidian vault not found: $VAULT" >&2
  exit 1
fi
if [[ ! -f "$SRC/INDEX.md" ]] || [[ ! -f "$SRC/GM_SESSION_FORMAT_STANDARD.md" ]]; then
  echo "Missing sessiongm Markdown. Use the complete Quarky/mdfiles checkout." >&2
  exit 1
fi
if [[ -e "$BACKUP" ]]; then BACKUP="$BACKUP - $$"; fi
changed=0
installed=0
while IFS= read -r -d '' file; do
  rel="${file#"$SRC/"}"
  target="$DEST/$rel"
  if [[ -e "$target" ]]; then
    if cmp -s "$file" "$target"; then
      continue
    fi
    if [[ "$changed" -eq 0 ]]; then mkdir -p "$BACKUP"; fi
    mkdir -p "$BACKUP/$(dirname "$rel")"
    cp -p "$target" "$BACKUP/$rel"
    changed=$((changed + 1))
  fi
  mkdir -p "$(dirname "$target")"
  cp -p "$file" "$target"
  installed=$((installed + 1))
done < <(find "$SRC" -type f -name '*.md' -print0)
echo "Installed $installed Markdown files into $DEST"
echo "Backed up $changed replaced files to $BACKUP (when applicable)"
echo "No original prelude text was intentionally rewritten by this installer."
