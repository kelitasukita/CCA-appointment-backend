# Essa é a imagem base do meu projeto
FROM node 

# Diretório raiz do meu projeto 
WORKDIR /cca-appointment

# Aqui eu to copiando esse arquivo para dentro do diretório acima
COPY package.json ./

# Aqui eu estou instalando todas as dependências com do projeto
RUN npm install

# Aqui eu estou copiando tudo do meu projeto para a pasta raiz
COPY . . 

# Aqui eu estou expondo a porta 3000 para acesso ao meu localhost
EXPOSE 3000

# Aqui eu mantenho meu container rodando
CMD ["npm", "run", "dev"]