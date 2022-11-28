$(document).ready(function() {
    
    $('#btnIncluir').click(function(){
        $.ajax({
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            dataType: 'json',
            url: 'http://localhost:3200/produtos',
            method: 'POST',
            data: JSON.stringify({
                descricao: $('#descricao').val(),
                preco: parseFloat($('#preco').val())
            }),
            success: function(resposta) {
                window.alert('Produto incluído com sucesso.');
            },
            error: function(erro) {
                console.error(erro.responseText);
            }
        });
    });
    
    $('#btnBuscar').click(function() {
        $.ajax({
            dataType: 'json',
            url: 'http://localhost:3200/produtos',
            method: 'GET',
            success: function(resposta) {

                $('#tabela > tbody').html('');
                $.each(resposta, function(indice, item){
                    let linha = $('<tr>');

                    let colunas = `<td>${item.id}</td>`;
                    colunas += `<td>${item.descricao}</td>`;
                    colunas += `<td>${item.preco}</td>`;

                    linha.append(colunas);

                    $('#tabela > tbody').append(linha);
                });
            },
            error: function(erro) {
                console.error(erro.responseText);
            }
        });
    });
});
