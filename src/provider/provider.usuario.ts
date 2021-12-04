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
