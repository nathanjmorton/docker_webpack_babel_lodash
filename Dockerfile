# minimalist config with notes & extra commands if required
# get ip address of virtual machine to view app
# $ docker-machine ip default
# $ git checkout --track origin/updates

FROM node:12
# move node_modules up in the app's directory to hide from the host mapping (to avoid conflicts with binaries of desktop versus container image) and install
WORKDIR /usr/src
COPY ./package*.json ./
RUN npm i --no-optional && npm cache clean --force
# put the node modules' binaries on the PATH
ENV PATH /usr/src/node_modules/.bin:$PATH
# set the app directory
WORKDIR /usr/src/app
COPY ./ ./ 
# ENV PORT=8080
# EXPOSE 8080

ENTRYPOINT ["npm", "run", "start"]
