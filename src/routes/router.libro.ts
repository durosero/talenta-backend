import  { Router } from 'express';
import { validatorCamposLibro, validatorCamposUser } from '../middlewares/validar-campos';
const router = Router();
import  {  deleteLibro, listLibros, listLibrosDisponibles, saveLibro } from '../controllers/controller.libro';



//====================
//   /libro 
//=====================

router.post('/', [validatorCamposLibro], saveLibro);
router.delete('/:id', deleteLibro);
router.get('/lista', listLibros);
router.get('/disponibles', listLibrosDisponibles);
router.put('/', [validatorCamposLibro], saveLibro);





export default router;