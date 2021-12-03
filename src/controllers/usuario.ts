//====================
//   /usuario/auth 
//=====================

import { saveUserService } from "../provider/usuario_provider";

export const auth = async (req: any, res: any) => {
    let tokenMail = req.params.token;

    try {
        return res.status(200).json({
            error: true,
            message: "listto para autenticar",
        });

    } catch (error) {
        return res.status(200).json({
            error: true,
            message: "Algo salio mal",
        });

    }
};

export const saveUser = async (req: any, res: any) => {
    let body = req.body;

    try {
        const data = {
            'nombres': body.nombres,
            'apellidos': body.apellidos,
            'email': body.email,
            'direccion': body.direccion,
            'celular': body.genero
        };

        const resultDB = await saveUserService(data);

        return res.status(200).json({
            error: true,
            message: "Usuario guardado exitosamente",
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            error: true,
            message: "Algo salio mal",
        });

    }
};

