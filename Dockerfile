FROM  node:20

WORKDIR /app
  
COPY . . 

RUN npm install
RUN npm run build
RUN npx prisma generate 

EXPOSE 3000

CMD [ "node", "src/index.js" ]


 HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "executable" ]