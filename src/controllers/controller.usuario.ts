
import { UsuarioDTO } from '../interfaces/database';
import { deleteUsuarioService, listUsuarioBusquedaService, listUsuarioService, saveUserService, updateUsuarioService } from "../provider/provider.usuario";
import { updateLibroService } from '../provider/provider.libro';


//====================
// POST  /usuario/ 
//=====================
export const saveUser = async (req: any, res: any) => {
    let body = req.body;

    try {
        const data: UsuarioDTO = {
            id_usuario: body.id_usuario,
            nombres: body.nombres,
            apellidos: body.apellidos,
            email: body.email,
            direccion: body.direccion,
            celular: body.genero
        };

        let resultDB = {};

        if (req.method == "POST") {
            resultDB = await saveUserService(data);
        } else {
            data.id_usuario = body.id_usuario || 0;
            resultDB = await updateUsuarioService(data);
        }

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



//====================
// GET  /usuario/lista
//=====================
export const listUsuario = async (req: any, res: any) => {

    try {

        const start: number = Number(req.query.start) || 0;
        const limite: number = Number(req.query.limite) || 10;


        const resultDB: any = await listUsuarioService(start, limite);
        const usuarios: UsuarioDTO[] = resultDB.result;

        let mensaje: string = "No se encontraron resultados";

        if (usuarios.length > 0) {
            mensaje = `Se han encontrado ${usuarios.length} resultados`;
        }

        return res.status(200).json({
            error: false,
            message: mensaje,
            data: usuarios,
            total: resultDB.total
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            error: true,
            message: "Algo salio mal",
            data: [],
            total: 0
        });

    }
};

//====================
// GET  /usuario/busqueda
//=====================
export const buscarUsuario = async (req: any, res: any) => {

    try {

        let termino: string = req.query.termino || "";


        const resultDB: UsuarioDTO[] = await listUsuarioBusquedaService(termino);

        let mensaje: string = "No se encontraron resultados";

        if (resultDB.length > 0) {
            mensaje = `Se han encontrado ${resultDB.length} resultados`;
        }

        return res.status(200).json({
            error: false,
            message: mensaje,
            data: resultDB,
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            error: true,
            message: "Algo salio mal",
            data: [],
            total: 0
        });

    }
};

