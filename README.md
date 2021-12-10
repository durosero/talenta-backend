# API-BIBLIOTECA

### instalacion con docker
#### paso 1
 Descargar o clonar el proyecto y configurar las variables de entorno, para ello tener en cuenta el archivo `.env` ubicado en la raiz del proyecto.
 #### paso 2
Descargado el proyecto ya podemos ejecutar el comando: `docker-compose up`, para levantar los sevidores de mysql y nodejs, por defecto se crea la base de datos con usuario `root` y con nombre `biblioteca`. El nombre de la base de datos no se debe cambiar

#### paso 3
Ejecutar en el navegador la ruta `http://localhost:3000/api/`, si todo carga bien el backend esta listo
### instalacion normal

Se deben tener todas las recomendaciones mencionadas anteiormente.

#### paso 1
Importar la base datos ubicada en la carpeta `db` de la raiz del proyecto, con el nombre de `database.sql`, crear los usuarios y asignar privilegios

#### paso 2
Configurar los datos de conexion de base de datos teniendo en cuenta el archivo `.env` del proyecto

#### paso 3
Nos ubicamos en la raiz del proyecto y ejecutamos el comando `npm start`

#### paso 4
Ejecutar en el navegador la ruta `http://localhost:3000/api/`, si todo carga bien el backend esta listo

