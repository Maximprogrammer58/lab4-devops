#!/usr/bin/env bash
set -euo pipefail

# Переходим в каталог с html-страницей
echo "Changing directory to /opt/lab4-service/html"
cd /opt/lab4-service/html || { echo "Failed to change directory"; exit 1; }

# Создаем файл index.html с фамилией студента
echo "Creating index.html"
echo "Shamenkov Maxim" > index.html || { echo "Failed to create index.html"; exit 1; }

# Запускаем HTTP-сервер на порту 8000
echo "Starting HTTP server"
python3 -m http.server 8000 || { echo "Failed to start HTTP server"; exit 1; }
