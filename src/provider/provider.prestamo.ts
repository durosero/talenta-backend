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
