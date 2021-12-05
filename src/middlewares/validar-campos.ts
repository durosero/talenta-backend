import { validationResult } from "express-validator";
let Validator = require("validatorjs");
Validator.useLang("es");
//import * as Validator from 'validatorjs';


export const validatorCamposUser = (req: any, res: any, next: any) => {

  const validationRule = {
    id_usuario:  "present|numeric",
    nombres: "required|string",
    apellidos: "required|string",
    email:"required|string|email",
    celular:  "required|string",
    direccion:  "required|string"
  };

  let validation = new Validator(req.body, validationRule);

  if (validation.passes()) {
    next();
  } else {
    res.status(412).send({
      error: true,
      message: "Hay campos obligatorios sin completar",
      errors: validation.errors.all(),
    });
  }
};


export const validatorCamposLibro = (req: any, res: any, next: any) => {

  const validationRule = {

    titulo: "required|string",
    editorial: "required|string",
    nombre_autor:"required|string",
    area:  "required|string",

  };

  let validation = new Validator(req.body, validationRule);

  if (validation.passes()) {
    next();
  } else {
    res.status(412).send({
      error: true,
      message: "Hay campos obligatorios sin completar",
      errors: validation.errors.all(),
    });
  }
};


export const validatorCamposPrestamo = (req: any, res: any, next: any) => {

  const validationRule = {

    id_prestamo :   "present|numeric",
    libro_id :  "required|numeric",
    usuario_id :  "required|numeric",
    fecha_prestamo :  "required|date",
    fecha_devolucion :  "required|date",
    devuelto :  "required|string",
  };

  let validation = new Validator(req.body, validationRule);

  if (validation.passes()) {
    next();
  } else {
    res.status(412).send({
      error: true,
      message: "Hay campos obligatorios sin completar",
      errors: validation.errors.all(),
    });
  }
};
