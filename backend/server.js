import express from 'express';
import termsController from "./controllers/termsController.js";
import cors from 'cors';
import path  from 'path';

const app = express();
const port = 3000;
app.use(cors());

app.use(express.static('public'));
app.use('/api/terms', termsController);
app.get('*', (req, res) => {
    res.sendFile(path.resolve('public', 'index.html'));
  });


app.listen(port, '0.0.0.0', () => {
    console.log(`Сервер успешно запущем на порту: ${port}`)
});
