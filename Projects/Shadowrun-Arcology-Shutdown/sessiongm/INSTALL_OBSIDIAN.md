# Obsidian GM Session Markdown Installation

Run `bash install.sh` from the `sessiongm/` directory in a **complete clone** of `Quarky/mdfiles`. No arguments are needed.

The script copies all `.md` files to `/Users/somed/Documents/obs/Rpg/Shadowrun-Arcology-Shutdown/sessiongm` and backs up each existing file that would be replaced into a dated **vault-root** folder `Backup - Shadowrun-SessionGM - YYYY-MM-DD HHMMSS/`. Identical files are skipped. It does not touch other campaigns, and it requires the existing vault.

For the freshest version, first update your GitHub checkout with `git pull --ff-only`, then run the script. This is **documentation only**; it does not import into Foundry or alter any world data.
