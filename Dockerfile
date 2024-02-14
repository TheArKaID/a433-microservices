# Menggunakan node versi 14.15.4 berbasis alpine3.12
FROM node:14.15.4-alpine3.12

# Menentukan workdir ke /app
WORKDIR /app

# Copy semua file ke /app
COPY . .

# Install semua dependensi
RUN npm install

# Expose port 3000
EXPOSE 3000

# npm start sesuai script package.json
CMD ["npm", "start"]
