import  { Router } from 'express';
import { validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  saveUser } from '../controllers/controller.usuario';



//====================
//   /usuario 
//=====================

router.post('/', [validatorCamposUser], saveUser);




export default router;