interface Usuario {


  id: string;
  nombre: string;
  picture?: string;
  email: string;
  active: boolean;
  google?: boolean;
  sesion_id?: string;
  rol: any;
  permisos?: any;

}


export {
  Usuario
}