require('dotenv').config();
const express = require('express');
const { Pool } = require('pg');

const app = express();
app.use(express.json());
app.get('/api/health', (req, res) => res.json({ status: 'ok' }));

const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: 5432
});

app.get('/products', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM products');
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Database error' });
  }
});

app.listen(3000, () => {
  console.log('Server running on port 3000');
});
