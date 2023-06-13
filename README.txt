-------INSTRUCCIONES PARA CORRER EL PROYECTO------

Requisitos: Docker

1. Verificar que Docker esté corriendo en su máquina.
2. Clonar este repositorio en su espacio de trabajo local desde la terminal con "git clone".
3. Dentro de la carpeta clonada, corremos el siguiente comando: 

*Usamos docker-compose como orquestador para correr los contenedores.

```
docker-compose up -d
```

4. Para abrir phpmyadmin vaya a la dirección: http://127.0.0.1:8000 
5. Para abrir la web principal vaya a la dirección: http://127.0.0.1:80

----CREDENCIALES DEL USUARIO ADMINISTRADOR PARA ENTRAR AL CRUD----

Usuario: admin
Contraseña: admin


Nota: La modificacion de productos tiene un problema con las imagenes, siempre se debe cambiar la imagen a una diferente de la que se tiene creada.