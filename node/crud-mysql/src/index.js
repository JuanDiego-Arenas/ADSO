import express from 'express';
import { pool } from './db.js'

const app = express();

app.get('/ping', (req, res) => res.send('Pong'));

app.get('/employees', (req, res) => res.send('Obteniendo Empleados'));
app.post('/employees', (req, res) => res.send('Creando Empleados'));
app.patch('/employees', (req, res) => res.send('Actualizando Empleados'));
app.delete('/employees', (req, res) => res.send('Eliminando Empleados'));

app.listen(process.env.PORT || 3000);
console.log('Server running on port', process.env.PORT || 3000);
console.log('http://localhost:3000/');
