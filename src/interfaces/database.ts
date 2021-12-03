export interface Usuario {
    id_usuario?: number;
    nombres: string;
    apellidos: string;
    email: string;
    celular: string;
    direccion?: string;
}


export interface Libro {
    id_libro? :  number;
    titulo: string;
    editorial:  string;
    nombre_autor: string;
    area: string;
}

export interface Prestamo {
    prestamo_id?: number;
    libro_id:  number;
    usuario_id : number;
    fecha_prestamo: Date;
    fecha_devolucion: Date;
    devuelto: string;
}