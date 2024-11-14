# Use a imagem oficial do Node.js
FROM node:14

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos package.json e instale as dependências
COPY package*.json ./
RUN npm install

# Copie o código-fonte
COPY . .

# Exponha a porta que o servidor irá usar
EXPOSE 3000

# Comando para rodar o servidor
CMD ["node", "index.js"]
