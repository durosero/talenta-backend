import  { Router } from 'express';
import { validatorCamposLibro, validatorCamposPrestamo, validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  deletePrestamo, listPrestamo, savePrestamo } from '../controllers/controller.prestamo';



//====================
//   /prestamo 
//=====================

router.post('/', [validatorCamposPrestamo], savePrestamo);
router.delete('/:id', deletePrestamo);
router.get('/lista', listPrestamo);
router.put('/', [validatorCamposPrestamo], savePrestamo);

export default router;