const fs = require('fs').promises;
const app = require('./app');
const readline = require('readline-sync');
const { readAll } = require('./utils/readFile');
const { whiteNewMovie } = require('./utils/whiteFile');
const { query } = require('express');
const { updateMovies } = require('./utils/updateMovies');
const { deletMovies } = require('./utils/deletMovies');

const PORT = 3001;

const NEW_MOVIES = { 
  id: 8,
  movie: 'test',
  price: 8
}

// async function main() {
//   const SHOW = await readAll();
//   console.log(SHOW);
//   const NEW = await whiteNewMovie(NEW_MOVIES);
//   const SHOW2 = await readAll();
//   console.log(SHOW2);
// }

// main()

app.listen(PORT, () => console.log(`rinning on port ${PORT}`))

app.get('/movies', async (req, res) => {
  const file = await readAll();
  res.status(200).json(file);
})

app.get('/movies/:id', async (req, res) => {
  const { id } = req.params;
  const movies = await readAll();

  const current = movies.filter((movie) => movie.id === Number(id) )
  return res.status(200).json(current)
})

app.post('/movies', async (req, res) => {
  const prevMovies = await readAll();
  const add = req.body;

  await whiteNewMovie([...prevMovies, { id: Date.now(), ...add }])
  return res.status(201).json({ message: 'adicionado com sucesso!' })
})

app.put('/movies/:id', async (req, res) => {
  const { id } = req.params;
  const up = req.body;

  const re = await updateMovies(id, up);
  return res.status(201).json({ message: 'atualizado com sucesso!' })
})

app.delete('/movies/:id', async (req, res) => {
  const { id } = req.params;
  await deletMovies(Number(id));
  res.status(204).end();
})