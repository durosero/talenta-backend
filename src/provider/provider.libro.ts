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
export const deleteLibroService = async (id: number) => {

    return await conDB("libro")
    .where({
        'id_libro': id
    })
    .del();

};
export const listLibroService = async () : Promise<[]> => {
    return await conDB.select().from('libro');
};
