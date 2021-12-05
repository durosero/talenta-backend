import  { Router } from 'express';
import { validatorCamposLibro, validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  saveLibro } from '../controllers/controller.libro';



//====================
//   /libro 
//=====================

router.post('/', [validatorCamposLibro], saveLibro);




export default router;