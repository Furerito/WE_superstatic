# Datei: Dockerfile
FROM nginx:alpine

# Optional: deklarieren wir das Web-Verzeichnis als Volume
VOLUME /usr/share/nginx/html

# Port 80 exponieren
EXPOSE 80

# Default-Cmd startet nginx im Vordergrund
CMD ["nginx", "-g", "daemon off;"]
