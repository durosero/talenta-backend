import  { Router } from 'express';
import { validatorCamposLibro, validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  saveUser } from '../controllers/controller.libro';



//====================
//   /libro 
//=====================

router.post('/', [validatorCamposLibro], saveUser);




export default router;