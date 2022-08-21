FROM  node:alpine
WORKDIR /app
COPY  package-lock.json package.json parkings.json ./
RUN  npm install
COPY  . ./
EXPOSE  8080
CMD  [ "node", "index.js" ]