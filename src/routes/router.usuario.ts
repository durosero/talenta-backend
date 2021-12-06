import  { Router } from 'express';
import { validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  deleteUsuario, listUsuario, saveUser } from '../controllers/controller.usuario';



//====================
//   /usuario 
//=====================

router.post('/', [validatorCamposUser], saveUser);
router.delete('/:id', deleteUsuario);
router.get('/lista',listUsuario);



export default router;