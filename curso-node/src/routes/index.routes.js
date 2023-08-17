import { Router } from 'express';
const router = Router();

router.get('/', (req, res) =>
	res.render('index', { title: 'InnovateTech.js' })
);
router.get('/about', (req, res) => res.render('about', { title: 'About' }));
router.get('/contact', (req, res) =>
	res.render('contact', { title: 'Contact' })
);
router.get('/mision', (req, res) => res.render('mision', { title: 'Misión' }));
router.get('/vision', (req, res) => res.render('vision', { title: 'Visión' }));
router.get('/services', (req, res) =>
	res.render('services', { title: 'Servicios' })
);

export default router;
