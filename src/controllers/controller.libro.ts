import { deleteLibroService, listLibroService, saveLibroService } from "../provider/provider.libro";
import { Libro } from "../interfaces/database";

//====================
// POST  /libro/
//=====================
export const saveLibro = async (req: any, res: any) => {
    let body = req.body;

    try {
        const data: Libro = {
            titulo: body.titulo,
            editorial: body.editorial,
            nombre_autor: body.nombre_autor,
            area: body.area,
        };

        const resultDB = await saveLibroService(data);

        return res.status(200).json({
            error: false,
            message: "Libro guardado exitosamente",
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
// DELETE  /libro/:id
//=====================
export const deleteLibro = async (req: any, res: any) => {
    let body = req.body;
    let id_libro = parseInt(req.params.id);

    try {

        const resultDB = await deleteLibroService(id_libro);

        return res.status(200).json({
            error: false,
            message: `El libro con codigo ${id_libro} ha sido eliminado`,
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
// GET  /libro/lista
//=====================
export const listLibros = async (req: any, res: any) => {

    try {

        const resultDB: Libro[] = await listLibroService();

        let mensaje: string = "No se encontraron resultados";

        if (resultDB.length > 0) {
            mensaje = `Se han encontrado ${resultDB.length} resultados`;
        }

        return res.status(200).json({
            error: false,
            message: mensaje,
            data: resultDB
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            error: true,
            message: "Algo salio mal",
            data: []
        });

    }
};

