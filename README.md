# Ciberseguridad_Docker
Fernando Batún Bolaños

Examen del modulo 3.4 del diplomado en ciberseguridad

## Preparativos
Primero instalamos docker, en mi caso use kali:
>https://www.kali.org/docs/containers/installing-docker-on-kali/

Luego se crea un dockerfile:
>vim dockerfile

El cual se encuetra en el repositorio

Se creará la imagen usando el dockerfile con el siguiente comando:
>sudo docker build -t examen_docker ~/Documents/docker

Se ejecuta el contenedor usando:
>sudo docker run -P examen_docker

Se usa "-P" para que de puertos libres, solo que tendran que revisar cuales, usando el comando:
>sudo docker ps

Se comprueban los servicios de apache y ssh

Para apache es tan facil como acceder desde el navegador a:
>localhost:numero_puerto

y en el caso del ssh, se comprueba desde terminal, en este caso el usuario se llama "ElJefe":
>sudo ssh ElJefe@localhost -p numero_puerto

Nos pedira la contraseña pero podremos accesar.

Por ultimo, para cerrar el docker se hace uso de los siguientes comando:
>sudo docker container stop ID_container

Si se desea remover el contendor y la imagen realizamos:
>sudo docker container rm ID_container

>sudo docker image rm ID_image
