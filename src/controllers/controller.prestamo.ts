
import { Prestamo } from "../interfaces/database";
import { savePrestamoService } from "../provider/provider.prestamo";


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

