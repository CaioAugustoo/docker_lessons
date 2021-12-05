# Imagem de Origem
FROM node:14

# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR /app

# Instalando dependências da aplicação e armazenando em cache.
COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

# start app
CMD [ "node", "app.js" ]