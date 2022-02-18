# Practica de docker

## link imagen
https://hub.docker.com/repository/docker/juanflo1/practica-ciberseguridad

## Descargar
	docker pull juanflo1/practica-ciberseguridad:latest
	
## Para crear un contenedor con nuestra imagen es de la siguiente forma:
```sh
docker run -d --name apache-server -p 80:80 juanflo1/practica-ciberseguridad
```

## Vamos al navegador y escribimos lo siguiente
```sh
http://localhost
```