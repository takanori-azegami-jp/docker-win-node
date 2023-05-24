FROM node:20.2

# アプリケーションディレクトリを作成する
WORKDIR /app

# アプリケーションの依存関係をインストールする
COPY package*.json ./
RUN npm install

# アプリケーションのソースをバンドルする
COPY . .

# Listen port
EXPOSE 3000

ENTRYPOINT /bin/bash