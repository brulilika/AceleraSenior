function calcularSoma(valor1, valor2) {

    if(typeof(valor1) != 'number' || typeof(valor2) != 'number') {
        throw new Error('Os parâmetros devem ser numéricos');
    }
    return valor1 + valor2;
}
exports.somar = calcularSoma;

exports.buscarMaior = function (a, b = 0) {
    if(typeof(a) != 'number' || typeof(b) != 'number') {
        throw new Error('Os parâmetros devem ser numéricos');
    }
    return a > b ? a : b;
}

exports.calcularJuros = (valor, taxa) => { 
    return valor * taxa / 100;
}

exports.calcularTamanho = s => s.length;
