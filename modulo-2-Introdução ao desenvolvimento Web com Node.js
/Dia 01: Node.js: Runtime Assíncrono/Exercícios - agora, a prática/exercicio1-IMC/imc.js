const readline = require('readline-sync');
const { calculaIMC } = require('./calculaIMC');

const peso = readline.questionInt('Qual o seu peso? Kg ')
const heigth = readline.questionInt('Qual a sua altura? M ')

console.log(calculaIMC(peso, heigth))
