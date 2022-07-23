import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from "typeorm";
import { Prestamo } from "./Prestamo";


@Entity()
export class Libro {
    @PrimaryGeneratedColumn()
    id_libro: number;
    @Column()
    codigo: string;
    @Column()
    titulo: string;
    @Column()
    editorial: string;
    @Column()
    nombre_autor: string;
    @Column()
    area: string;

    
    @OneToMany(() => Prestamo, prestamo => prestamo.libro_id)
    prestamos: Prestamo[];
}