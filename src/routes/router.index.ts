import { Request, Response } from "express";
import express from "express";
const app = express();

import routerUsuario from "./router.usuario";
import routerLibro from "./router.libro";
import routerPrestamo from "./router.prestamo";

import routerInicio from "./router.inicio";

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
app.use("/libro", routerLibro);
app.use("/prestamo", routerPrestamo);

export default app;
