const fs = require('fs').promises;
const app = require('./app');
const readline = require('readline-sync');
const { readAll } = require('./utils/readFile');
const { whiteNewMovie } = require('./utils/whiteFile')

const PORT = 3001;

const NEW_MOVIES = { id: 8, movie: 'As Branquelas', price: 3.54 }

async function main() {
  const SHOW = await readAll();
  console.log(SHOW);
  const NEW = await whiteNewMovie(NEW_MOVIES)
  const SHOW2 = await readAll();
  console.log(SHOW2);
}

main()

app.listen(PORT, () => console.log(`rinning on port ${PORT}`))