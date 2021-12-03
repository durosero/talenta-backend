import { validationResult } from "express-validator";
let Validator = require("validatorjs");
Validator.useLang("es");
//import * as Validator from 'validatorjs';


export const validatorCamposUser = (req: any, res: any, next: any) => {


  const validationRule = {
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


