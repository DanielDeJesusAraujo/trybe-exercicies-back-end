const path = require('path');
const { readAll } = require('./readFile');
const { whiteNewMovie } = require('./whiteFile');
const fs = require('fs').promises;

const updateMovies = async (id, object_update) => {
  // PEGA O JSON ATUAL
  const prevMovies = await readAll();

  // FAZ ALTERAÇÕES NECESSARIAS
  const updatedMovie = { id: Number(id), ...object_update }

  // RECONSTROI O JSON
  const actual = prevMovies.reduce((prev, current) => {
    if (current.id === Number(id)) return [...prev, updatedMovie]
    else return [ ...prev, current ];
  }, [])

  // RESCREVE O JSON
  const forUpdate = JSON.stringify(actual)
  try {
    await fs.writeFile(path.join(__dirname, '../movies.json'), forUpdate)
  } catch (error) {
    console.log(`ERRO NA ESCRITA DO JSON: ${error.message}`)
  }
}

module.exports = { updateMovies };