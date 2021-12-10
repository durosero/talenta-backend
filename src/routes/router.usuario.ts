import  { Router } from 'express';
import { validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  buscarUsuario, deleteUsuario, listUsuario, saveUser } from '../controllers/controller.usuario';



//====================
//   /usuario 
//=====================

router.post('/', [validatorCamposUser], saveUser);
router.delete('/:id', deleteUsuario);
router.get('/lista',listUsuario);
router.get('/buscar',buscarUsuario);
router.put('/lista',listUsuario);
router.put('/', [validatorCamposUser], saveUser);



export default router;