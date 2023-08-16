import { Router } from 'express';
const router = Router();

router.get('/', (req, res) =>
	res.render('index', { title: 'Node.js' })
);
router.get('/about', (req, res) =>
	res.render('about', { title: 'Node.js About me' })
);
router.get('/contact', (req, res) =>
	res.render('contact', { title: 'Node.js Contact me' })
);

export default router;
