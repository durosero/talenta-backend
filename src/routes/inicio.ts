import { Router } from 'express';
const router = Router();

import { verificaToken } from '../middlewares/autenticacion';

//====================
//   /inicio
//=====================
router.get('/', [], (req: any, res: any) => {
    res.json(req.usuario);
});

router.get('/inico', );

export default router;