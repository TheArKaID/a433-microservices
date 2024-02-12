# Node.js versi 14 sebagai base image
FROM node:14

# Directory /app di dalam container sebagai menjadi working directory
WORKDIR /app

# Menyalin seluruh file ke dalam /app (workdir)
COPY . .

# Aplikasi berjalan di mode production dan item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies, kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080 yang digunakan aplikasi
EXPOSE 8080

# Saat container di-start akan menjalankan command berikut (npm start) untuk run aplikasi
CMD ["npm", "start"]
