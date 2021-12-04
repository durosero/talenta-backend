import { Libro } from "../interfaces/database";
import { conDB } from "../config/database";

export const saveLibroService = async (params: Libro) => {
    let result = await conDB
        ("libro")
        .insert(params);
        
    if (result.length > 0) {
        return true;
    } else {
        return false;
    }
};
