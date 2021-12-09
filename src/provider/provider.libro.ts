import { Libro } from '../interfaces/database';
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
export const updateLibroService = async (params: Libro) => {
    let result = await conDB
        ("libro")
        .where('id_libro', params.id_libro)
        .update(params)     
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
// export const listLibroService = async () : Promise<[]> => {
//     return await conDB.select().from('libro');
// };


// lista todos los libros disponibles
export const listarLibrosDisponibleService = async () : Promise<Libro[]> => {
    let result = await conDB
        .select(
            'libro.id_libro'
            , 'libro.titulo'
            , 'libro.editorial'
            , 'libro.nombre_autor'
            , 'libro.area'
        )
        .from("libro")
        .leftJoin("prestamo", "prestamo.libro_id", "=", "libro.id_libro")
        .where({ "prestamo.devuelto": 'SI' })
        .orWhereNull('prestamo.devuelto')
        .groupBy('libro.id_libro')
        .orderBy('libro.titulo', 'ASC');
    return result;
};


// lista todos los libros con su respectivo estado, pendiente paginacion
export const listLibroService = async (start: number, limite:number) : Promise<any> => {
    const trx = await conDB.transaction();

    try {

        let result = await trx
        .select(
            trx.raw('SQL_CALC_FOUND_ROWS libro.id_libro, libro.titulo, libro.editorial, libro.nombre_autor, libro.area , prestamo.devuelto'),
            // 'libro.id_libro'
            // , 'libro.titulo'
            // , 'libro.editorial'
            // , 'libro.nombre_autor'
            // , 'libro.area'
            // , 'prestamo.devuelto'
        )
        .from("libro")
        .leftJoin("prestamo", "prestamo.libro_id", "=", "libro.id_libro")
        .groupBy('libro.id_libro')
        .orderBy([{ column: 'prestamo.devuelto', order: 'ASC' }, { column: 'libro.id_libro', order: 'DESC' }, { column: 'libro.titulo', order: 'ASC' }])
         .limit(limite)
         .offset(start)
        const total =  await  trx.select(trx.raw('found_rows()')); 
        
        for(const row of result){
            if(row.devuelto==null){
                row.disponible =  'SI';
            }else{
                row.disponible=row.devuelto;
            }
            delete row['devuelto'];

        }

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



        // for(const row of result){
        //     if(row.devuelto==null){
        //         row.disponible =  'SI';
        //     }else{
        //         row.disponible=row.devuelto;
        //     }
        //     delete row['devuelto'];

        // }


 //   return result;
};