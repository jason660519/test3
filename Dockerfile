# 使用 Node.js 官方輕量級映像
FROM node:18-alpine

# 設定工作目錄
WORKDIR /app

# 複製 package.json 和 package-lock.json
COPY package*.json ./

# 安裝依賴
RUN npm install

# 複製其餘專案檔案
COPY . .

# 設定容器要監聽的埠號
EXPOSE 3000

# 啟動應用
CMD ["npm", "start"] 