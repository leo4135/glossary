import mysql from 'mysql2'

export const connection = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: 3306
});


// const data = [
//     {
//         id: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2',
//         label: 'XSS',
//         description: 'подтип атаки на веб-системы, заключающийся во внедрении в выдаваемую веб-системой страницу вредоносного кода (который будет выполнен на компьютере пользователя при открытии им этой страницы) и взаимодействии этого кода с веб-сервером злоумышленника. Является разновидностью атаки «Внедрение кода».',
//         x: 100,
//         y: 150
//     },
//     {
//         id: 'a9083e4a-e258-4fde-903b-e95cce8ab786',
//         label: 'JavaScript',
//         description: 'Высокоуровневый язык программирования, используемый для создания интерактивности на веб-страницах.',
//         x: 200,
//         y: 100
//     },
//     {
//         id: '63d5bc9e-46ff-424c-b200-d05789125f5a',
//         label: 'Stored XSS',
//         description: 'Постоянная XSS-атака, когда вредоносный код сохраняется на сервере.',
//         x: 950,
//         y: 350
//     },
//     {
//         id: 'fb1b127b-79ea-4ca3-9b23-894ad86020e8',
//         label: 'DOM-based XSS',
//         description: 'XSS-уязвимость, возникающая из-за модификации DOM-среды в браузере.',
//         x: 1100,
//         y: 400
//     },
//     {
//         id: '86dd780d-4364-4d0b-81d8-7f60b6a01c2d',
//         label: 'HTML',
//         description: 'Язык гипертекстовой разметки, основа для создания структуры веб-страниц.',
//         x: 500,
//         y: 200
//     },
//     {
//         id: '9d4836db-aaf7-4333-9b90-4c9114dff657',
//         label: 'Reflected XSS',
//         description: 'Тип XSS-атаки, при которой вредоносный скрипт отражается от веб-сервера в ответе на запрос.',
//         x: 800,
//         y: 300
//     },
//     {
//         id: '754c80ad-061e-4fa8-b978-f5806ea27376',
//         label: 'Cross-Site Scripting',
//         description: 'Полная форма наименования уязвимости от сокращенного XSS.',
//         x: 150,
//         y: 200
//     },
//     {
//         id: '38b083ae-8dfb-4fc5-b701-4de4c152bf24',
//         label: 'URL',
//         description: 'Унифицированный указатель ресурса - адрес для доступа к веб-ресурсам в сети Интернет.',
//         x: 350,
//         y: 150
//     },
//     {
//         id: '5c911e8f-4f64-42fb-b47e-63540a7d9517',
//         label: 'CSS',
//         description: 'Язык каскадных таблиц стилей, используется для оформления веб-страниц.',
//         x: 650,
//         y: 250
//     },
//     {
//         id: '78b634f9-2034-46b1-9bdf-cb9c76433874',
//         label: 'DOM-структура',
//         description: 'Объектная модель документа, представление HTML-документа в виде дерева объектов.',
//         x: 200,
//         y: 450
//     }
// ]

// const edges = [
//     { source: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2', target: '63d5bc9e-46ff-424c-b200-d05789125f5a' }, // XSS → Stored XSS
//     { source: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2', target: 'fb1b127b-79ea-4ca3-9b23-894ad86020e8' }, // XSS → DOM-based XSS
//     { source: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2', target: '9d4836db-aaf7-4333-9b90-4c9114dff657' }, // XSS → Reflected XSS
//     { source: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2', target: '754c80ad-061e-4fa8-b978-f5806ea27376' }, // XSS → Cross-Site Scripting (полное название)
//     { source: 'fb1b127b-79ea-4ca3-9b23-894ad86020e8', target: '78b634f9-2034-46b1-9bdf-cb9c76433874' }, // DOM-based XSS → DOM-структура
//     { source: 'a9083e4a-e258-4fde-903b-e95cce8ab786', target: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2' }, // JavaScript → XSS (основной язык атак)
//     { source: '86dd780d-4364-4d0b-81d8-7f60b6a01c2d', target: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2' }, // HTML → XSS
//     { source: '38b083ae-8dfb-4fc5-b701-4de4c152bf24', target: '9d4836db-aaf7-4333-9b90-4c9114dff657' }, // URL → Reflected XSS
//     { source: '5c911e8f-4f64-42fb-b47e-63540a7d9517', target: '86dd780d-4364-4d0b-81d8-7f60b6a01c2d' }, // CSS → HTML
//     { source: '5c911e8f-4f64-42fb-b47e-63540a7d9517', target: '78b634f9-2034-46b1-9bdf-cb9c76433874' }, // CSS → DOM-структура
//     { source: 'a5ddb33a-12d3-4d3a-90da-4f2089748c45', target: '217270a3-0720-4953-96ee-0ea33393d639' }, // CSRF → cookie-файлы
//     { source: 'b8967f62-2e9e-4f9d-81f9-ca3bc5d5cfd1', target: '86dd780d-4364-4d0b-81d8-7f60b6a01c2d' }, // Clickjacking → HTML
//     { source: '36279024-4279-435e-b8bb-df0c0649ac1b', target: 'a5ddb33a-12d3-4d3a-90da-4f2089748c45' }, // POST-запрос → CSRF
//     { source: 'c7ab0cb1-fce6-403f-a649-1da5ab680bde', target: 'ab8d8654-a491-4750-a918-99bbd118e75e' }, // Directory Traversal → SQL инъекции
//     { source: 'ab8d8654-a491-4750-a918-99bbd118e75e', target: 'ec59a1d2-d908-4a41-8eba-6bed167acaba' }, // SQL инъекции → Command Injection
//     { source: '72327bab-8e3a-45b5-a009-ed52a95e7f56', target: 'ab8d8654-a491-4750-a918-99bbd118e75e' }, // Insecure Deserialization → SQL инъекции
//     { source: 'fd95dd2b-2efb-4e9f-8d18-73fac9056049', target: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2' }, // Content Security Policy → XSS (механизм защиты)
//     { source: 'fd95dd2b-2efb-4e9f-8d18-73fac9056049', target: 'a0bf8957-0d45-45f9-bd21-586f62315f06' }, // Content Security Policy → Санитизация
//     { source: 'a0bf8957-0d45-45f9-bd21-586f62315f06', target: '4fac8097-3ab0-42cd-b0e5-d60f5f1efca2' }, // Санитизация → XSS (метод предотвращения)
//     { source: '80e82e3a-f61d-4ab6-892f-04a0c9881f21', target: 'a0bf8957-0d45-45f9-bd21-586f62315f06' }  // Валидация → Санитизация
// ];

// edges.forEach(item => {
//     const sql = `INSERT INTO edges(source, target) VALUES('${item.source}','${item.target}')`
//     connection.query(sql, function (err, results) {
//         if (err) console.log(err);
//         else console.log("Данные добавлены");
//     });
// })



