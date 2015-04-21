# docker-bind

Use 0.0.0.0 in named.conf and change the ips in docker run command. If you want to bind from named.conf to your ips, you should use --net=host with the docker run command

```
docker run -d -p IP:53:53/udp -p IP:53:53/tcp -v /var/bind/:/var/bind vulpe03/bind
```
