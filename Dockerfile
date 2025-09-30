# Sử dụng Node.js LTS (18 hoặc 20)
FROM node:18

# Tạo thư mục app trong container
WORKDIR /usr/src/app

# Copy file package.json và package-lock.json
COPY package*.json ./

# Cài dependencies
RUN npm install --production

# Copy toàn bộ source code
COPY . .

# App chạy trên port 3000
EXPOSE 3000

# Lệnh start app
CMD ["npm", "start"]
