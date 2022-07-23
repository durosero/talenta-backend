export interface UsuarioDTO {
    id_usuario?: number;
    nombres: string;
    apellidos: string;
    email: string;
    celular: string;
    direccion?: string;
}


export interface LibroDTO {
    id_libro? :  number;
    titulo: string;
    editorial:  string;
    nombre_autor: string;
    area: string;
}

export interface PrestamoDTO {
    id_prestamo?: number;
    libro_id:  number;
    usuario_id : number;
    fecha_prestamo: Date;
    fecha_devolucion: Date;
    devuelto: string;
}