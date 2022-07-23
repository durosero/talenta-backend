
import { PrestamoDTO } from '../interfaces/database';
import { deletePrestamoService, listPrestamoService, savePrestamoService, updatePrestamoService } from "../provider/provider.prestamo";
import { PrestamoLibro } from '../models/PrestamoLibro';


//====================
// POST  /usuario/ 
//=====================
export const savePrestamo = async (req: any, res: any) => {
    let body = req.body;

    try {
        const data: PrestamoDTO = {
            libro_id: body.libro_id,
            usuario_id: body.usuario_id,
            fecha_prestamo: body.fecha_prestamo,
            fecha_devolucion: body.fecha_devolucion,
            devuelto: body.devuelto
        };

        let resultDB = {};

        if (req.method == "POST") {
            resultDB = await savePrestamoService(data);
        } else {
            data.id_prestamo =  body.id_prestamo || 0;
            resultDB = await updatePrestamoService(data);
        }

        return res.status(200).json({
            error: false,
            message: "Prestamo guardado exitosamente",
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
// DELETE  /prestamo/:id
//=====================
export const deletePrestamo = async (req: any, res: any) => {
    let body = req.body;
    let id_prestamo = parseInt(req.params.id);

    try {

        const resultDB = await deletePrestamoService(id_prestamo);
        
        return res.status(200).json({
            error: false,
            message: `El prestamo con codigo ${id_prestamo} ha sido eliminado`,
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
// GET  /prestamo/lista
//=====================
export const listPrestamo = async (req: any, res: any) => {

    try {

        const start: number = Number(req.query.start) || 0;
        const limite: number = Number(req.query.limite) || 10;

        const resultDB: any = await listPrestamoService(start, limite);
        const prestamos: PrestamoLibro[] = resultDB.result;


        let mensaje: string = "No se encontraron resultados";

        if (prestamos.length > 0) {
            mensaje = `Se han encontrado ${prestamos.length} resultados`;
        }

        return res.status(200).json({
            error: false,
            message: mensaje,
            data: prestamos,
            total :  resultDB.total
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            error: true,
            message: "Algo salio mal",
            data: [],
            total :  0
        });

    }
};


