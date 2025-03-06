# Используем официальный образ Node.js на базе Alpine (легковесный)
FROM node:18-alpine

# Создаем рабочую директорию
WORKDIR /app

# Копируем зависимости фронтенда и устанавливаем их
COPY frontend/package*.json ./frontend/
WORKDIR /app/frontend
RUN npm install

# Копируем исходный код фронтенда и собираем проект
COPY frontend .
RUN npm run build

# Переходим к бэкенду
WORKDIR /app

# Копируем зависимости бэкенда и устанавливаем их
COPY backend/package*.json ./backend/
WORKDIR /app/backend
RUN npm install

# Копируем исходный код бэкенда
COPY backend .

# Устанавливаем PM2 глобально
RUN npm install -g pm2

# Открываем порт, на котором работает сервер (замените 3000 на ваш порт)
EXPOSE 3000

# Запускаем сервер через PM2 (режим для Docker)
CMD ["pm2-runtime", "start", "server.js"]