#!/bin/bash
res=$(echo -e "❌ Отмена\n🛑 Перезагрузка" | fuzzel -d -p "Перезагрузить ПК? " --width 20 --lines 2)

if [ "$res" = "🛑 Перезагрузка" ]; then
    systemctl reboot
fi
