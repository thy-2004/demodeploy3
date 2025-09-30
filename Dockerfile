# Sử dụng Node.js LTS
FROM node:18

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy file package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ source code vào container
COPY . .

# Expose cổng 3000
EXPOSE 3000

# Lệnh chạy khi container khởi động
CMD ["npm", "start"]
