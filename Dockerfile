FROM node:14.17
ENV TZ=America/Bogota
ENV NODE_ENV=pro
ADD ./db/database.sql /docker-entrypoint-initdb.d/database.sql
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm","start"]
