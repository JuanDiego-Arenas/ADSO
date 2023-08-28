import express from 'express';
import employeesRoutes from './routes/employees.routes.js';
import indexRoutes from './routes/index.routes.js';

const app = express();

app.use(employeesRoutes);
app.use(indexRoutes);

app.listen(process.env.PORT || 3000);
console.log('Server running on port', process.env.PORT || 3000);
console.log('http://localhost:3000/employees');
