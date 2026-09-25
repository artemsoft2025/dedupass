#!/usr/bin/env bash
# Удаление dedupass
set -e

echo "============================================================"
echo "  Удаление dedupass"
echo "============================================================"
echo ""

rm -f ~/.local/bin/dedupass
rm -f ~/.local/bin/dedupass_gui
rm -f ~/.local/share/applications/dedupass_gui.desktop
rm -f ~/.local/share/icons/hicolor/256x256/apps/dedupass.png

update-desktop-database ~/.local/share/applications 2>/dev/null || true

echo "[✓] Удалено."

