import  { Router } from 'express';
import { validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  auth, saveUser } from '../controllers/usuario';



//====================
//   /login 
//=====================


router.get('/auth', auth);
router.post('/', [validatorCamposUser], saveUser);



export default router;