import {Entity, PrimaryGeneratedColumn, Column, OneToMany} from "typeorm";
import { Prestamo } from './Prestamo';


@Entity()
export class Usuario {
    @PrimaryGeneratedColumn()
    id_usuario: number;
    @Column()
    nombres : string;
    @Column()
    apellidos: number;
    @Column()
    email :string;
    @Column()
    celular :  string;
    @Column()
    direccion :  string;

    // @OneToMany(() => Prestamo, prestamo => prestamo.usuario_id)
    // prestamos: Prestamo[];
}