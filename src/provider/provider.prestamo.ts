import { Libro, Prestamo } from "../interfaces/database";
import { conDB } from "../config/database";

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


export const listPrestamoService = async () : Promise<[]> => {
    return await conDB.select().from('prestamo');
};

