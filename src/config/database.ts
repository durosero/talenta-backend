import Knex from 'knex';

const db: any = {
  desarrollo: {
    host: process.env.MYSQL_DEV_HOST,
    user: process.env.MYSQL_DEV_USER,
    password: process.env.MYSQL_DEV_PASS,
    database: process.env.MYSQL_DEV_DATABASE,
    port: 3306,
  },

  produccion: {
    host: process.env.MYSQL_PROD_HOST,
    user: process.env.MYSQL_PROD_USER,
    password: process.env.MYSQL_PROD_PASS,
    database: process.env.MYSQL_PROD_DATABASE,
    port: 3306,
  },
};


if (process.env.NODE_ENV == "pro") {
  db.default = db.produccion;
} else {
  db.default = db.desarrollo;
}


let conDB: any = Knex({
  client: "mysql",
  connection: db.default,
});


export { conDB};
