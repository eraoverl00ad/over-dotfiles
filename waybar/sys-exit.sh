#!/bin/bash
res=$(echo -e "❌ Отмена\n🛑 Выключить" | fuzzel -d -p "Выключить ПК? " --width 20 --lines 2)

if [ "$res" = "🛑 Выключить" ]; then
    systemctl poweroff
fi
