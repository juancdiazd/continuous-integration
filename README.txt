-------INSTRUCCIONES PARA CORRER EL PROYECTO------

Requisitos: Docker

1. Clonar este repositorio en su espacio de trabajo local.
2. Verificar que Docker esté corriendo en su máquina.
3. entrar en el navegador a "localhost/phpmyadmin"

Usamos docker-compose como orquestador para correr los contenedores:

```
docker-compose up -d
```
4. Para abrir phpmyadmin vaya a la dirección: http://127.0.0.1:8000 
5. Para abrir la web principal vaya a la dirección: http://127.0.0.1:80

----CREDENCIALES DEL USUARIO ADMINISTRADOR PARA ENTRAR AL CRUD----

Usuario: admin
Contraseña: admin


Nota: La modificacion de productos tiene un problema con las imagenes, siempre se debe cambiar la imagen a una diferente de la que se tiene creada.