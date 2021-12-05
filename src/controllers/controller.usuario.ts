
import { Usuario } from "../interfaces/database";
import { deleteUsuarioService, saveUserService } from "../provider/provider.usuario";


//====================
// POST  /usuario/ 
//=====================
export const saveUser = async (req: any, res: any) => {
    let body = req.body;

    try {
        const data: Usuario = {
            id_usuario: body.id_usuario,
            nombres: body.nombres,
            apellidos: body.apellidos,
            email: body.email,
            direccion: body.direccion,
            celular: body.genero
        };

        const resultDB = await saveUserService(data);

        return res.status(200).json({
            error: false,
            message: "Usuario guardado exitosamente",
            resultDB
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            error: true,
            message: "Algo salio mal",
        });

    }
};


//====================
// DELETE  /usuario/:id
//=====================
export const deleteUsuario = async (req: any, res: any) => {
    let body = req.body;
    let id_usuario = parseInt(req.params.id);

    try {

        const resultDB = await deleteUsuarioService(id_usuario);
        
        return res.status(200).json({
            error: false,
            message: `El usuario con codigo ${id_usuario} ha sido eliminado`,
            resultDB
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            error: true,
            message: "Algo salio mal",
        });

    }
};