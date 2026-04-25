#!/usr/bin/env bash

# Проверяем доступность HTTP-сервера
if curl --silent --fail http://127.0.0.1:8000/; then
    echo "Service is running successfully!"
else
    echo "Service is down!"
fi
