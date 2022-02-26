--1 
Abrir el archivo examen que está en github
--2
Poner el archivo en visual code 
--3
Primero abrir el archivo Cont_hub este tendrá un archivo app donde estará los códigos que se usaron para crear la página web que se subirá en el servidor y alado de la app está el docker-compose.yml el cual nos servirá para subir la página web en el servidor  
--4
seleccionar el docker-comopose.yml y al abrirlo vera el código para subir el servidor de la página web al abrirlo habrá la terminal y ponga cd Cont_hub para que este nos permita solo usar este archivo y no los demás que están en la carpeta examen al hacerlo pondra docker-compose up -d para que se suba la página web 
--5 
al haber subido el servidor la página web abre el docker y te saldrá que se subió al verlo pon en abrir en el navegador ya sea con el docker o lo puede hacer manual poniendo loclahots: y el número de puerto que está en el archivo 
--6
en el archivo examen vera un docker-comopose.yml abrirlo encontrara el código para el servidor de la base de datos que se usara para otra página web que se subirá a un servidor abrir la terminar y poner cd.. para que no corra el cont_hub al haber hecho eso poner en la terminar docker-compose up -d y este creara el servido de la base de datos
--7
En el archivo examen hay un archivo db_confing el cual tiene my.cnf que nos sirve para la base de datos 
--8
al tener ya el servidor de la base de datos abrir heidi y conectarse poniendo la contraseña, el nombre del usuario y el número de puerto que están en el docker-compose.yml y poner la base de datos que está en el archivo llamado ventas2 para que se guarde en el servidor y volver a poner el docker-compose up -d
--9
abrir el archivo cont_dockerfile y encontrara un archivo app donde está la página web php pero también donde está la app están el docker-compose.yml, un php.ini que nos sirve para que no genere problemas el lenguaje php y también está el dockerfile el cual nos ayudara para subir nuestra página web 
--10
abrir el docker-comopose.yml y abrir la terminar y poner cd cont_dockerfile para poder ejecutarlo bien y al hacerlo poner en la terminar docker-compose up -d para que suba nuestro servidor que tiene la base de datos si este no reconoce la base de datos saldría error, pero si no nos saldría bien la página web


