# WE_superstatic
Einfache statische Website

docker run -d \
  --name superstatic \
  -p 5648:80 \
  -v /home/rpiuser/WE_superstatic/WE_superstatic:/usr/share/nginx/html:ro \
  nginx:alpine
