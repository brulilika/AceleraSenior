let botao = document.getElementById('btnEnviar');

let data = new Date();
let ano = data.getFullYear();
let meses = [
    {mes: 'Janeiro', dias: 31},
    {mes: 'Fevereiro', dias: ano%4==0? 29:28}, //if ternario
    {mes: 'Marco', dias: 31},
    {mes: 'Abril', dias: 30},
    {mes: 'Maio', dias: 31},
    {mes: 'Junho', dias: 30},
    {mes: 'Julho', dias: 31},
    {mes: 'Agosto', dias: 31},
    {mes: 'Setembro', dias: 30},
    {mes: 'Outubro', dias: 31},
    {mes: 'Novembro', dias: 30},
    {mes: 'Dezembro', dias: 31},
];

let selectMes = document.getElementById('mes')

function listMes(){
    for(let i=0; i< meses.length; i++){
        //Manipulações do DOM
        let option = document.createElement('option');
        option.textContent = meses[i].mes;
        option.setAttribute('value', meses[i].dias);

        selectMes.appendChild(option);
    }
}

listMes();

//eventType and callback function 
//callback function (JS) = lambda (C#/JAVA)
botao.addEventListener('click', function() {
    
    let nome = document.getElementById('nome').value;
    let email = document.getElementById('email').value;
    let data = document.getElementById('data').value;
    let mes = document.getElementById('mes').value;
    let msg = `Nome: ${nome} <br/>Email: ${email} <br/> Data Nasc.: ${data} <br/> Qnt. dias mês interesse: ${mes}`;

    let retorno = document.getElementById('response');
    retorno.style.display = "flex";
    retorno.innerHTML = msg;
});

/*
Caso feito uma funcao por fora e chamada para o callback,
não se chama com os parenteses como convencionalmente pois ao se colocar o parenteses, o callback executa a função e 
caso tenha um valor de retorno da função, este retorno que sera utilizado como "novo parametro" para callback, normalmente,
recebe-se "undefined"
O QUE É EQUIVOCADO

CORRETO:
function nome() {}
button.addEventListener('click', nome);

essa função passada acima é no JS passada o endereço, colocada em uma fila e executada de forma assíncrona ao acontecer o evento 
associado

em equivalência com C#, seria como passar a função utilizando "delegate", passagem de ponteiro da função
*/

