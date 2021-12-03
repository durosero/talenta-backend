import { conDB } from "../config/database";
import { parse, format } from 'date-format-parse';



export const saveUserService = async (params: any) => {
    let result = await conDB
        ("usuario")
        .insert(params);
        
    if (result.length > 0) {
        return true;
    } else {
        return false;
    }
};
