FROM node:10

# Create app directory
WORKDIR /usr/src

COPY . .

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

RUN cd bpg_services && npm install

RUN cd React13318 && npm install

RUN cd MySql13318 && npm install

RUN cd Plex13318 && npm install

RUN cd Sproc13318 && npm install

RUN cd Alarms13318 && npm install

CMD cd Kep13318 && npm run all

EXPOSE 80 3000
