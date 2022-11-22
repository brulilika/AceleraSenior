let botao = document.getElementById('btnEnviar');

//eventType and callback function 
//callback function (JS) = lambda (C#/JAVA)
botao.addEventListener('click', function() {
    
    let nome = document.getElementById('nome').value;
    let email = document.getElementById('email').value;
    let data = document.getElementById('data').value;
    let msg = `Nome: ${nome} <br/>Email: ${email} <br/> Data Nasc.: ${data}`;

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