# localtunnel
## Image for expose ervices on global net

### Create docker net
``` bash
docker network create  myproj
```
### Build image
``` bash
docker build . -t localtunnel:0.0.1
```
### Run nginx container in created net
``` bash
docker run --rm -dp 80:80 --network myproj --name nginx nginx
```
### Run LocalTunnel 
``` bash
docker run --rm -it --name ltunnel --network myproj localtunnel:0.0.1 [override_CMD]
```
<!-- ### Localtunnel page
https://github.com/localtunnel/localtunnel
### Docker-compose example
https://dev.to/qelphybox/easy-local-tunnel-with-docker-environment-1oc0
### Another Example -->