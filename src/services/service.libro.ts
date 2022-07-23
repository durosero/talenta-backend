import { getConnection, getCustomRepository, getRepository } from "typeorm";
import { LibroDTO } from '../interfaces/database';
import { Libro } from '../entities/Libro';
import { Prestamo } from '../entities/Prestamo';

export const saveLibroService = async (data: LibroDTO) => {
    const newbook = getRepository(Libro).create(data);
    const result = await getRepository(Libro).save(newbook);
    return result;
}


export const updateLibroService = async (data: LibroDTO): Promise<boolean> => {
    const libro = await getRepository(Libro).findOne(data.id_libro);
    console.log(libro);
    if (libro) {
        getRepository(Libro).merge(libro, data);
        const result = await getRepository(Libro).save(libro);
        return true;
    }
    return false

}

export const deleteLibroService = async (id_libro: number): Promise<boolean> => {

    const result = await getRepository(Libro).delete(id_libro);
    if (parseInt(result.affected.toString()) > 0) {
        return true
    } return false;

}


// lista todos los libros con su respectivo estado, pendiente paginacion
export const listLibroService = async (start: number, limite: number) => {



    const resultLibros = await getConnection()
    .createQueryBuilder()
    .select('SQL_CALC_FOUND_ROWS')
    .select('libro.id_libro, libro.titulo, libro.editorial, libro.nombre_autor, libro.area , prestamo.devuelto')
    .from(Libro, "libro")
    .leftJoinAndSelect(Prestamo, "prestamo", "prestamo.libro_id = libro.id_libro")
    .groupBy('libro.id_libro')
    .orderBy({
        "prestamo.devuelto": "ASC",
        "libro.id_libro": "DESC",
        "libro.titulo": "ASC",
    })
    .limit(limite)
    .offset(start)
    .getRawMany();

    console.log(resultLibros);



    //const connection = getConnection();

    // await getConnection().transaction(async transactionalEntityManager => {






    // });




    // const queryRunner = connection.createQueryRunner();
    // await queryRunner.connect();

    // await queryRunner.startTransaction();

    // try {

    //     // execute some operations on this transaction:


    //     // commit transaction now:
    //     await queryRunner.commitTransaction();

    // } catch (err) {

    //     // since we have errors let's rollback changes we made
    //     await queryRunner.rollbackTransaction();

    // } finally {

    //     // you need to release query runner which is manually created:
    //     await queryRunner.release();
    // }


}