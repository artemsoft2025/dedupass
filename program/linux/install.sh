#!/usr/bin/env bash
# Установка dedupass в домашнюю директорию пользователя
#

# Перейти в директорию, где лежит скрипт

set -e

cd "$(dirname "$0")"

echo "============================================================"
echo "  Установка dedupass"
echo "============================================================"
echo ""

# Проверка, что бинарники собраны
if [ ! -f dedupass ]; then
    echo "[X] dedupass не найден."
    exit 1
fi

# Создание директорий
mkdir -p ~/.local/bin
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/icons/hicolor/256x256/apps

# Копирование бинарников
echo "[*] Установка бинарников в ~/.local/bin/"
cp dedupass ~/.local/bin/dedupass
chmod +x ~/.local/bin/dedupass

if [ -f dedupass_gui ]; then
    cp dedupass_gui ~/.local/bin/dedupass_gui
    chmod +x ~/.local/bin/dedupass_gui
fi

# Иконка
if [ -f icon.png ]; then
    echo "[*] Установка иконки"
    cp icon.png ~/.local/share/icons/hicolor/256x256/apps/dedupass.png
fi

# .desktop файл для GUI
if [ -f dedupass_gui ]; then
    echo "[*] Установка .desktop-файла"
    cat > ~/.local/share/applications/dedupass_gui.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=dedupass GUI
GenericName=Password Dictionary Tool
Comment=Работа со словарями паролей
Comment[en]=Password dictionary utility
Exec=$HOME/.local/bin/dedupass_gui
Icon=dedupass
Terminal=false
Categories=Utility;Security;
Keywords=password;dictionary;duplicates;merge;
EOF
    chmod +x ~/.local/share/applications/dedupass_gui.desktop
    update-desktop-database ~/.local/share/applications 2>/dev/null || true
fi

echo ""
echo "============================================================"
echo "  Установка завершена!"
echo "============================================================"
echo ""
echo "  CLI:  ~/.local/bin/dedupass"
echo "  GUI:  ~/.local/bin/dedupass_gui"
echo "        (также доступен в меню приложений)"
echo ""
echo "  Если ~/.local/bin отсутствует в PATH, добавьте:"
echo ""
echo "    echo 'export PATH=\"\$HOME/.local/bin:\$PATH\"' >> ~/.bashrc"
echo "    source ~/.bashrc"
echo ""
