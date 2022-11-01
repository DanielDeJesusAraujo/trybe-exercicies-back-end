const fs = require('fs').promises;
const { readAll } = require('./readFile');
const path = require('path');

const MOVIES_DATE_PATH = path.join(__dirname, '../movies.json')

const whiteNewMovie = async (newMovie) => {
  try {
    const PREV_MOVIES = await readAll();
    const MOVIES_TO_JSON = JSON.stringify([ ...PREV_MOVIES, newMovie]);
    await fs.writeFile(MOVIES_DATE_PATH ,MOVIES_TO_JSON);
  } catch (error) {
    console.log(`erro na escrita do json: ${error.message}`);
  }
}

module.exports = { whiteNewMovie };

