// código em Node.js para criar um servidor de aplicações
let http = require('http');
let fs = require('fs');
let url = require('url');

// definindo o componente usado como servidor
let server = http.createServer(function(request, response) {
    
    let url_params = url.parse(request.url);
    let caminho = url_params.pathname;

    fs.readFile(__dirname + caminho, function(erro, conteudo) {
        if(erro) {
            response.writeHead(404, { 'Content-Type': 'text/html'});
            response.write('<h1>Página não encontrada</h1>');
        } else {
            response.writeHead(200, { 'Content-Type': 'text/html'});
            response.write(conteudo);
        }
        response.end();
    });
});

server.listen(3000, function() {
    console.log('Servidor no ar');
})