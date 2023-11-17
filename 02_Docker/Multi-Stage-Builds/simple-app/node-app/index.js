const express = require('express');
const app = express();
const port = 3500;

app.get('/', (req, res) => res.send('Hello from Express!'));

app.listen(port, () => console.log(`Server listening on port ${port}`));
