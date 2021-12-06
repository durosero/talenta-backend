import { Libro, Prestamo } from "../interfaces/database";
import { conDB } from "../config/database";
import { PrestamoLibro } from '../models/PrestamoLibro';

export const savePrestamoService = async (params: Prestamo) => {
    let result = await conDB
        ("prestamo")
        .insert(params);
        
    if (result.length > 0) {
        return true;
    } else {
        return false;
    }
};


export const deletePrestamoService = async (id: number) => {

    return await conDB("prestamo")
    .where({
        'id_prestamo': id
    })
    .del();

};


export const listPrestamoService2 = async () : Promise<Prestamo[]> => {
    return await conDB.select().from('prestamo');
};


//obtiene todos los prestamos con sus respectivos libros y usuarios
export const listPrestamoService = async () : Promise<PrestamoLibro[]> => {
    let result = await conDB
        .select(
            'prestamo.id_prestamo'
            , 'libro.id_libro'
            , 'libro.titulo'
            , 'libro.editorial'
            , 'libro.nombre_autor'
            , 'libro.area'
            , 'prestamo.fecha_prestamo'
            , 'prestamo.fecha_devolucion'
            , 'prestamo.devuelto'
            , 'usuario.id_usuario'
            , 'usuario.nombres'
            , 'usuario.apellidos'
            , 'usuario.email'
            , 'usuario.celular'
        )
        .from("prestamo")
        .join("libro", "prestamo.libro_id ", "=", "libro.id_libro")
        .join("usuario", "prestamo.usuario_id", "=", "usuario.id_usuario")
        .groupBy('prestamo.id_prestamo')
        .orderBy('prestamo.id_prestamo', 'DESC');
    return result;
};