import  { Router } from 'express';
import { validatorCamposLibro, validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  deleteLibro, saveLibro } from '../controllers/controller.libro';



//====================
//   /libro 
//=====================

router.post('/', [validatorCamposLibro], saveLibro);
router.delete('/:id', deleteLibro);




export default router;