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
