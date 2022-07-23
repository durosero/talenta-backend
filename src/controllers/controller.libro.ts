import {  listarLibrosDisponibleService } from "../provider/provider.libro";
import { format } from "date-format-parse";



import { LibroDTO } from "../interfaces/database";
import { saveLibroService, updateLibroService, deleteLibroService, listLibroService } from "../services/service.libro";

//====================
// POST  /libro/
//=====================
export const saveLibro = async (req: any, res: any) => {
    let body = req.body;

    try {
        const data: LibroDTO = {
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

            if(!resultDB){
                throw new Error("No se encontró el libro");
            }
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
            det_error: error.toString()
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

        if(!resultDB){
            return res.status(200).json({
                error: false,
                message: `El libro con codigo ${id_libro} no se encontró`,
                resultDB
            });
        }

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
        const libros: LibroDTO[] = resultDB.result;

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

        const resultDB: any = await listarLibrosDisponibleService(termino);

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

