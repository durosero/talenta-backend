
export interface PrestamoLibro { 

    id_prestamo: number
    , id_libro: number
    , titulo: string
    , editorial: string
    , nombre_autor: string
    , area: string
    , fecha_prestamo: Date
    , fecha_devolucion: Date
    , devuelto: string
    , id_usuario: number
    , nombres: string
    , apellidos: string
    , email: string
    , celular: string
}