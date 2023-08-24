import express from 'express';
import { pool } from './db.js'

const app = express();

app.get('/employees', (req, res) => res.send('Obteniendo Empleados'));
app.post('/employees', (req, res) => res.send('Creando Empleados'));
app.patch('/employees', (req, res) => res.send('Actualizando Empleados'));
app.delete('/employees', (req, res) => res.send('Eliminando Empleados'));

app.listen(3000);
console.log('Server running on port', 3000);
console.log('http://localhost:3000/');
