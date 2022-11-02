const path = require('path');
const { readAll } = require('./readFile');
const fs = require('fs').promises;

const deletMovies = async (id) => {
  const currentFile = await readAll();

  const newFile = currentFile.filter((item) => item.id != id)
  const toUpdate = JSON.stringify(newFile)
  try {
    await fs.writeFile(path.join(__dirname, '../movies.json'), toUpdate)
  } catch (error) {
    console.log(`ERRO NA DELEÇÃO DO ITEM ${error.message}`)
  }
}

module.exports = { deletMovies };