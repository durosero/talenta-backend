import { Request, Response } from "express";
import express from "express";
const app = express();

import routerUsuario from "../routes/usuario";

import routerInicio from "../routes/inicio";

//====================
//   ROUTES: /api
//=====================

app.get("/", (req: Request, res: Response) => {
  res.json({
    message: "Hola mundo",
    developer: "Duvan Rosero",
    error: false,
    env: process.env.NODE_ENV,
    base_url: process.env.BASE_URL,
  });
});

app.use("/usuario", routerUsuario);

export default app;
