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
        echo "..Discord - https://dsc.gg/servertipacvn.................."
        echo ".........................................................."

apt install python3-pip && pip install docker discord paramiko
wget https://github.com/Snhvn/paid-vps-bot-vn/raw/refs/heads/main/main.py
wget https://github.com/Snhvn/paid-vps-bot-vn/raw/refs/heads/main/boot.py
wget https://github.com/Snhvn/paid-vps-bot-vn/raw/refs/heads/main/node-install.sh && sh node-install.sh
echo "Vui lòng nhập token bot Discord của bạn, Tạo một bot tại discord.dev và nhận token, Bạn không cần bất kỳ ý định nào:"
read -r DISCORD_TOKEN
echo "nhập webhook lười ghi quá"
read -r WEBHOOK_URL
echo "Updating main.py with the provided Discord token.../Đang cập nhật main.py bằng token bot Discord được cung cấp..."
sed -i "s/TOKEN = ""/TOKEN = "$DISCORD_TOKEN"/" main.py
sed -i "s/TOKEN = ""/TOKEN = "$DISCORD_TOKEN"/" boot.py
sed -i "s/WEBHOOK_URL = ''/WEBHOOK_URL = '$WEBHOOK_URL'/" boot.py
clear
echo "nhập cái này 'python3 boot.py'
echo "python3 main.py"
