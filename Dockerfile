# Используем базовый образ с Python
FROM python:3.9-slim

# Устанавливаем зависимости
RUN pip install pytest

# Копируем ваш код в контейнер
COPY . /app

# Устанавливаем рабочую директорию
WORKDIR /app

# Запуск тестов
CMD ["pytest", "tests"]