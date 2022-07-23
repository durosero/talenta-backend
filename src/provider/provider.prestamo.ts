import { LibroDTO, PrestamoDTO } from "../interfaces/database";
import { conDB } from "../config/database";
import { PrestamoLibro } from '../models/PrestamoLibro';
import { parse, format } from 'date-format-parse';

export const savePrestamoService = async (params: PrestamoDTO) => {
    let result = await conDB
        ("prestamo")
        .insert(params);
        
    if (result.length > 0) {
        return true;
    } else {
        return false;
    }
};



export const updatePrestamoService = async (params: PrestamoDTO) => {
    let result = await conDB
        ("prestamo")
        .where('id_prestamo', params.id_prestamo)
        .update(params)     
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


export const listPrestamoService2 = async () : Promise<PrestamoDTO[]> => {
    return await conDB.select().from('prestamo');
};


//obtiene todos los prestamos con sus respectivos libros y usuarios
export const listPrestamoService = async (start: number, limite:number) : Promise<{}> => {


    const trx = await conDB.transaction();

    try {

        let result : PrestamoLibro[] = await trx
        .select(
            trx.raw(`SQL_CALC_FOUND_ROWS 
            libro.id_libro
            ,libro.titulo
            ,libro.editorial
            ,libro.nombre_autor
            ,libro.area
            ,prestamo.id_prestamo
            ,prestamo.fecha_prestamo
            ,prestamo.fecha_devolucion
            ,prestamo.devuelto
            ,usuario.id_usuario
            ,usuario.nombres
            ,usuario.apellidos
            ,usuario.email
            ,usuario.celular
            `)
        )
        .from("prestamo")
        .join("libro", "prestamo.libro_id ", "=", "libro.id_libro")
        .join("usuario", "prestamo.usuario_id", "=", "usuario.id_usuario")
        .groupBy('prestamo.id_prestamo')
        .orderBy('prestamo.id_prestamo', 'DESC')
        .limit(limite)
        .offset(start);



        const total =  await  trx.select(trx.raw('found_rows()')); 


        const  data : any =  {
            result : result,
            total : total[0]['found_rows()'] || 0
        }
        trx.commit();
        

        return data;
        
    } catch (error) {
        const  data : any =  {
            result : [],
            total : 0
        }
        trx.rollback();
        return data;
    }


};