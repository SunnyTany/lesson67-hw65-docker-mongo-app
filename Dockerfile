# Використання офіційного образу Node.js
FROM node:lts

# Встановлення робочої директорії у контейнері
WORKDIR /app

# Копіювання файлів `package.json` та `package-lock.json`
COPY package*.json ./

# Встановлення залежностей проекту
RUN npm install

# Копіювання всіх файлів проекту в контейнер
COPY . .

# Визначення порту, який буде відкритий
EXPOSE 3000

# Команда для запуску додатка
CMD ["node", "src/app.mjs"]
