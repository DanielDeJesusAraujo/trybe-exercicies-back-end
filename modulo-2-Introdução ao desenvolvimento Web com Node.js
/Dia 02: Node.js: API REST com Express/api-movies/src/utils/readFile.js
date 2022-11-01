const fs = require('fs').promises;
const path = require('path');

const MOVIES_DATE_PATH = path.join(__dirname, '../movies.json')

const readAll = async () => {
  try {
    const MOVIES_JSON = await fs.readFile(MOVIES_DATE_PATH)
    const MOVIES_CONVERTED = JSON.parse(MOVIES_JSON)
    return MOVIES_CONVERTED;
  } catch (error) {
    console.log(`ERRO NA LEITURA DO JSON: ${error.message}`)
  }
}

module.exports = { readAll };