FROM node:10

# Add wait-for-it
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh
COPY ./deploy.sh /
RUN chmod +x /deploy.sh


WORKDIR /home/node/App13319/React13319
COPY ./React13319/package.json ./React13319/package-lock.json* ./
RUN npm cache clean --force && npm install

WORKDIR /home/node/App13319/Feat13319
COPY ./Feat13319/package.json ./Feat13319/package-lock.json* ./
RUN npm cache clean --force && npm install

# copy app source to image _after_ npm install so that
# application code changes don't bust the docker cache of npm install step
WORKDIR /home/node/App13319/Feat13319
COPY ./Feat13319 .

WORKDIR /home/node/App13319/React13319
COPY ./React13319 .

RUN /deploy.sh

EXPOSE 3000 3030

CMD [ "npm", "run", "all" ]
