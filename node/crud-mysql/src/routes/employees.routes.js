import { Router } from 'express';
import * as employeesCtrl from '../controllers/employees.controller.js';

const router = Router();

router.get('/employees',employeesCtrl.getEmployees);
router.post('/employees', employeesCtrl.createEmployees);
router.patch('/employees', employeesCtrl.updateEmployees);
router.delete('/employees', employeesCtrl.deleteEmployees);

export default router;
