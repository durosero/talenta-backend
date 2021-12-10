import { conDB } from "../config/database";
import { parse, format } from 'date-format-parse';
import {  Usuario } from "../interfaces/database";



export const saveUserService = async (params: Usuario) => {
    let result = await conDB
        ("usuario")
        .insert(params);
        
    if (result.length > 0) {
        return true;
    } else {
        return false;
    }
};



export const updateUsuarioService = async (params: Usuario) => {
    let result = await conDB
        ("usuario")
        .where('id_usuario', params.id_usuario)
        .update(params)     
    if (result.length > 0) {
        return true;
    } else {
        return false;
    }
};


export const deleteUsuarioService = async (id: number) => {

    return await conDB("usuario")
    .where({
        'id_usuario': id
    })
    .del();
};


export const listUsuarioBusquedaService = async (termino: string) : Promise<Usuario[]> => {
    return await conDB("usuario")
    .whereRaw(`CONCAT_WS(' ', usuario.id_usuario, usuario.nombres,usuario.apellidos) LIKE '%${termino}%'`, [])
    .limit(5);

}

export const listUsuarioService = async (start: number, limite:number) : Promise<{}> => {

    const trx = await conDB.transaction();

    try {

        let result = await trx
        .select(
            trx.raw('SQL_CALC_FOUND_ROWS  *'),
        )
        .from("usuario")
        .orderBy([{ column: 'usuario.nombres', order: 'ASC' }])
        .limit(limite)
        .offset(start)
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