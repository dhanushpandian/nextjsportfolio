FROM node:14
WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install --frozen-lockfile
COPY . .
CMD ["npm", "run", "build"]
