const calculaIMC = (peso, altura) => {
  const imc = peso / ((altura / 100 ) * (altura / 100 ));
  const ret = { imc: imc.toFixed(2), status: '' }
  const test = Number(imc.toFixed(1));
  if ( test <= 18.5 ) ret.status = 'Abaixo do peso';
  else if (test > 18.5 && test <= 24.9) ret.status = 'Peso normal';
  else if (test >= 25.0 && test <= 29.9) ret.status = 'Acima do peso (sobrepeso)';
  else if (test >= 30.0 && test <= 34.9) ret.status = 'Obesidade grau I';
  else if (test >= 35.0 && test <= 39.9) ret.status = 'Obesidade grau II';
  else ret.status = 'acima	Obesidade graus III e IV';
  return ret;
}

module.exports = { calculaIMC };

// Abaixo de 18,5	Abaixo do peso (magreza)
// Entre 18,5 e 24,9	Peso normal
// Entre 25,0 e 29,9	Acima do peso (sobrepeso)
// Entre 30,0 e 34,9	Obesidade grau I
// Entre 35,0 e 39,9	Obesidade grau II
// 40,0 e acima	Obesidade graus III e IV
