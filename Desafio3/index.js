let promise = new Promise( (resolve, reject) => {
    let x = Math.random();
    if(x >= 0.5) {
        resolve('Valor calculado: ' + x);
    } else {
        reject('Valor inválido - insuficiente!!! ' + x);
    }
});

promise
    .then(s => s.toUpperCase())
    .then(s => s.substring(6))
    .then(resposta => console.log(resposta))
    .catch(erro => console.error(erro));