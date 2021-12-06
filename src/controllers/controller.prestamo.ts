
import { Prestamo } from '../interfaces/database';
import { deletePrestamoService, listPrestamoService, savePrestamoService } from "../provider/provider.prestamo";
import { PrestamoLibro } from '../models/PrestamoLibro';


//====================
// POST  /usuario/ 
//=====================
export const savePrestamo = async (req: any, res: any) => {
    let body = req.body;

    try {
        const data: Prestamo = {
            libro_id: body.libro_id,
            usuario_id: body.usuario_id,
            fecha_prestamo: body.fecha_prestamo,
            fecha_devolucion: body.fecha_devolucion,
            devuelto: body.devuelto
        };

        const resultDB = await savePrestamoService(data);

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

        const resultDB: PrestamoLibro[] = await listPrestamoService();

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


