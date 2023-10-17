FROM node:18

WORKDIR /usr/src/app

# ENV DB_HOST dummy
# ENV DB_USER dummy
# ENV DB_PASSWORD dummy
# ENV DB_PORT 3567 dummy


COPY package*.json ./

#---some useful tools for interactive usage---#
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js" ]
#CMD ["node", "server.js" ]
