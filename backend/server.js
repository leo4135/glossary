import express from 'express';
import termsController from "./controllers/termsController.js";
import cors from 'cors';

const app = express();
const port = 3000;
app.use(cors());

app.use(express.static('public'));
app.use('/api/terms', termsController);
app.use(express.static('public'));



app.listen(port, '0.0.0.0', () => {
    console.log(`Сервер успешно запущем на порту: ${port}`)
});
