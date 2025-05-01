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

```
groupId=$(az group show \
  --name <resource-group-name> \
  --query id --output tsv)
```

```
az ad sp create-for-rbac \
  --scope $groupId \
  --role Contributor \
  --sdk-auth
```

```
  registryId=$(az acr show \
  --name <registry-name> \
  --resource-group <resource-group-name> \
  --query id --output tsv)
```
