<<<<<<< HEAD
A [Docker](https://www.docker.com/) container with

- node 0.12
- chrome for karma headless testing


```bash
# run it

$ docker run -it --rm -v $(pwd):/src -w /src -e NODE_ENV=CI emmenko/nodejs-karma npm -v
Starting virtual X frame buffer: Xvfb.
Executing command npm -v
2.11.3
```
=======
# docker-node-karma
Node.js 5.3.0 configured with Chrome for Karma testing
>>>>>>> 71004263a6dfc98cb89760950f814e93e19b40d7
