import  { Router } from 'express';
import { validatorCamposLibro, validatorCamposPrestamo, validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  savePrestamo } from '../controllers/controller.prestamo';



//====================
//   /prestamo 
//=====================

router.post('/', [validatorCamposPrestamo], savePrestamo);




export default router;