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


export const deleteUsuarioService = async (id: number) => {

    return await conDB("usuario")
    .where({
        'id_usuario': id
    })
    .del();
};

export const listUsuarioService = async () : Promise<[]> => {
    return await conDB.select().from('usuario');
};