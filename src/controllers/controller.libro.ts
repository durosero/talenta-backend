import { saveLibroService } from "../provider/provider.libro";
import { Libro } from "../interfaces/database";

//====================
// POST  /libro/
//=====================
export const saveUser = async (req: any, res: any) => {
    let body = req.body;

    try {
        const data: Libro = {
            titulo : body.titulo,
            editorial : body.editorial,
            nombre_autor : body.nombre_autor,
            area : body.area,
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

