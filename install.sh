#!/bin/bash
        echo ".........................................................." 
        echo ".....By SNIPAVN..........................................."
        echo ".........................................................." 
        echo "........#####...######...##....#######........####......." 
        echo "......##........##...##..##..  ##....##......##..##......" 
        echo "..........##....##...##..##....##.##.##.....###..###......"
        echo "..........##....##...##.##.....##...........##....##......"
        echo "......#####.....##...####......##..........###....##......"
        echo ".........................................................."
        echo "..Discord - https://dsc.gg/servertipacvn ..") 
        echo ".........................................................."

apt install python3-pip && pip install docker discord
wget https://github.com/Snhvn/uia/raw/refs/heads/main/main.py
echo "Vui lòng nhập token bot Discord của bạn, Tạo một bot tại discord.dev và nhận token, Bạn không cần bất kỳ ý định nào:"
read -r DISCORD_TOKEN
echo "Updating main.py with the provided Discord token.../Đang cập nhật main.py bằng token bot Discord được cung cấp..."
sed -i "s/TOKEN = ''/TOKEN = '$DISCORD_TOKEN'/" main.py
clear
echo "python3 main.py"
