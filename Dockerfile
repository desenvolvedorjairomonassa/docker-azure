# Use uma imagem base oficial do Node.js
FROM node:14

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie o arquivo package.json e package-lock.json
COPY package*.json ./

# Instale as dependências da aplicação
RUN npm install

# Copie o restante do código da aplicação
COPY . .

# Expõe a porta na qual a aplicação irá rodar
EXPOSE 8080

# Comando para rodar a aplicação
CMD [ "node", "app.js" ]
