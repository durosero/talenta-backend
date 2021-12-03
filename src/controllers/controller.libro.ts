export const saveUser = async (req: any, res: any) => {
    let body = req.body;

    try {
        // const data: Usuario = {
        //     nombres: body.nombres,
        //     apellidos: body.apellidos,
        //     email: body.email,
        //     direccion: body.direccion,
        //     celular: body.genero
        // };

        // const resultDB = await saveUserService(data);

        // return res.status(200).json({
        //     error: false,
        //     message: "Usuario guardado exitosamente",
        //     resultDB
        // });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            error: true,
            message: "Algo salio mal",
        });

    }
};

