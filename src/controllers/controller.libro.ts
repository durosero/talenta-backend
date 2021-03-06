import { deleteLibroService, listarLibrosDisponibleService, listLibroService, saveLibroService, updateLibroService } from "../provider/provider.libro";
import { Libro } from '../interfaces/database';
import { format } from "date-format-parse";

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

        let resultDB = {};

        if (req.method == "POST") {
            resultDB = await saveLibroService(data);
        } else {
            data.id_libro =  body.id_libro || 0;
            resultDB = await updateLibroService(data);
        }

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

        const start: number = Number(req.query.start) || 0;
        const limite: number = Number(req.query.limite) || 10;
        const resultDB: any = await listLibroService(start, limite);

        // for(const row of resultDB.result){
        //     row.fecha_devolucion =  format(row.fecha_devolucion, 'DD-MM-YYYY');
        //     row.fecha_prestamo =  format(row.fecha_prestamo, 'DD-MM-YYYY');
        // }
        const libros: Libro[] = resultDB.result;

        let mensaje: string = "No se encontraron resultados";

        if (libros.length > 0) {
            mensaje = `Se han encontrado ${libros.length} resultados`;
        }

        return res.status(200).json({
            error: false,
            message: mensaje,
            data: libros,
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
// GET  /libro/lista
//=====================
export const listLibrosDisponibles = async (req: any, res: any) => {

    let termino : string = req.query.termino || "";

    try {

        const resultDB: Libro[] = await listarLibrosDisponibleService(termino);

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

