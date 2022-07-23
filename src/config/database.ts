import Knex from 'knex';
import { createConnections, Connection, getConnectionManager } from "typeorm";

const db: any = {
  desarrollo: {
    type: "mysql",
    host: process.env.MYSQL_DEV_HOST,
    username: process.env.MYSQL_DEV_USER,
    password: process.env.MYSQL_DEV_PASS,
    database: process.env.MYSQL_DEV_DATABASE,
    port: process.env.MYSQL_DEV_PORT,
    entities : ["dist/entities/**/*.js"],
    synchronize : true
  },

  produccion: {
    type: "mysql",
    host: process.env.MYSQL_PROD_HOST,
    username: process.env.MSYQL_PROD_USER,
    password: process.env.MYSQL_PROD_PASS,
    database: process.env.MYSQL_PROD_DATABASE,
    port: process.env.MYSQL_PROD_PORT,
    entities : ["dist/entities/**/*.js"],
    synchronize : true
  },
};



export const conectarDB = async (): Promise<Connection> => {

  if (process.env.NODE_ENV == "pro") {
    db.default = db.produccion;
  } else {
    db.default = db.desarrollo;
  }

  try {
    const connectionManager = getConnectionManager();
    const connection = connectionManager.create(db.default);
    const cnx = await connection.connect();
    console.log("Servidor mysql conectado");
    return cnx;
  } catch (error) {
    console.log("Error de conexion: ", error);
  }


}


let conDB: any = Knex({
  client: "mysql",
  connection: db.default,
});


export { conDB };
