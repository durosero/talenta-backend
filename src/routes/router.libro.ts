import  { Router } from 'express';
import { validatorCamposLibro, validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  deleteLibro, listLibros, saveLibro } from '../controllers/controller.libro';



//====================
//   /libro 
//=====================

router.post('/', [validatorCamposLibro], saveLibro);
router.delete('/:id', deleteLibro);
router.get('/lista', listLibros);





export default router;