import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from "typeorm";
import { Usuario } from './Usuario';
import { Libro } from './Libro';


export enum Devuelto {
    SI = "SI",
    NO = "NO",
}


@Entity()
export class Prestamo {
    @PrimaryGeneratedColumn()
    id_prestamo: number;



    @JoinColumn({ name: 'usuario_id' })
    @ManyToOne(() => Usuario, { nullable: false, eager: true, cascade: true })
    usuario_id: Usuario;



    @JoinColumn({ name: 'libro_id' })
    @ManyToOne(() => Libro, libro => libro.prestamos, { nullable: false, eager: true, cascade: true })
    libro_id: Libro;


    @Column({ type: 'date' })
    fecha_prestamo: string;

    @Column({ type: 'date', nullable: true })
    fecha_devolucion: string;

    @Column({ type: 'enum', enum: Devuelto, default: Devuelto.NO })
    devuelto: string;
}