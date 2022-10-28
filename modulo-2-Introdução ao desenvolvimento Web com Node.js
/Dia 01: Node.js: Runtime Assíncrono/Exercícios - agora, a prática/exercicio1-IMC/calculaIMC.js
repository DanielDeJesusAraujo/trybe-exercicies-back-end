const calculaIMC = (peso, altura) => {
  const imc = peso / (altura * 2);
  return imc.toFixed(2);
}

module.exports = { calculaIMC };