FROM node:10

# Create app directory

WORKDIR /usr/src/App13319/Config13319
COPY ./Config13319 .

WORKDIR /usr/src/App13319/React13319
COPY ./React13319/package.json ./React13319/package-lock.json* ./
RUN npm cache clean --force && npm install


WORKDIR /usr/src/App13319/Feat13319
COPY ./Feat13319/package.json ./Feat13319/package-lock.json* ./
RUN npm cache clean --force && npm install

# copy app source to image _after_ npm install so that
# application code changes don't bust the docker cache of npm install step
WORKDIR /usr/src/App13319/React13319
COPY ./React13319 .

WORKDIR /usr/src/App13319/Feat13319
COPY ./Feat13319 .

EXPOSE 3000 3030

WORKDIR /usr/src/App13319/Feat13319
CMD [ "npm", "run", "all" ]
