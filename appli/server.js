require('dotenv').config();
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.json({ message: 'API opérationnelle !' });
});

app.listen(PORT, () => {
  console.log(`API en écoute sur le port ${PORT}`);
});
