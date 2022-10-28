const readline = require('readline-sync');
const name = readline.question('Qual seu nome?');
const age = readline.questionInt('Qual a sua idade?');

console.log(`nome: ${name}`);
console.log(`idade:${age}`);