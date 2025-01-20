
FROM node:18


WORKDIR /app


COPY package.json ./


RUN npm install -g pnpm


RUN pnpm install


COPY . .

ENV PORT=5173

EXPOSE 5173


CMD ["pnpm","run","dev"]

