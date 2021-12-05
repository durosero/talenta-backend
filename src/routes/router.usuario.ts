import  { Router } from 'express';
import { validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  deleteUsuario, saveUser } from '../controllers/controller.usuario';



//====================
//   /usuario 
//=====================

router.post('/', [validatorCamposUser], saveUser);
router.delete('/:id', deleteUsuario);




export default router;