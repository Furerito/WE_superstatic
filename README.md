# WE_superstatic
Einfache statische Website

Projekt liegt in Ordner 
```
/home/rpiuser/WE_superstatic/WE_superstatic/
```
Starte Docker Webserver
```
docker run -d \
  --name superstatic \
  -p 5648:80 \
  -v /home/rpiuser/WE_superstatic/WE_superstatic:/usr/share/nginx/html:ro \
  nginx:alpine
```
