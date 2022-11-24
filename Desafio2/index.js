let moment = require('moment');

//Formatação para considerar a região ao qual se pega o horaio
moment.locale('pt-BR');
//moment.locale('ja-JP');
// moment.locale('it-IT');

const now = moment();
console.log(now);
console.log(now.format("DD/MM/yyyy"));
console.log(now.format("DD/MM/yyyy - dddd - (MMMM)"));