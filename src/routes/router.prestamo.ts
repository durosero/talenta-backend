import  { Router } from 'express';
import { validatorCamposLibro, validatorCamposPrestamo, validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  deletePrestamo, savePrestamo } from '../controllers/controller.prestamo';



//====================
//   /prestamo 
//=====================

router.post('/', [validatorCamposPrestamo], savePrestamo);
router.delete('/:id', deletePrestamo);



export default router;