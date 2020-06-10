### development - install locally and/or use docker

#### local install and run
```
$ npm i
$ npm run start 
```

#### docker install and run
```
$ docker build -t webpack_demo .
$ docker run -p 80:8080 -v $PWD:/usr/src/app webpack_demo
```

#### access
- browse to localhost:8080 for local install
- browse to localhost for docker install

#### notes
- ENV NODE_ENV production in Dockerfile will cause npm to ignore the devDependencies in package.json
    - We will use this later to run the node server in production without webpack-dev-server
    - multiple images can be built from one Dockerfile. A dev and production image could run simultaneously from different ports mapped to different domains (like .dev subdomain and remove the subdomain for prod) via something like nginx reverse proxy


### production - 
- complete the local npm install and then 
```
$ npm run build
```
    - this will produce a bundle.js file for the site in /public folder linked to the html page
