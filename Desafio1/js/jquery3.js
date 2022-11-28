$(document).ready(function(){

    $('#estado').html('<option>Selecione um estado</option>');
    $.each(estados, function(index, item){
        $('#estado').append($('<option>'),{
            text: item.estado,
            value: item.id
        });
    })

    $('#estado').change(function(){
        let idEstado = $(this).val();
        let cidadeByEstado = $.grep(cidades, function(city){
            return city.idEstado == idEstado
        })

        $.each(cidadeByEstado, function(index, item){
            $('#cidade').append($('<option>'),{
                text: item.cidade,
                value: item.id
            })
        })
    });

    $('#btnEnviar').click(function(){
        let nome = $('#nome').val();
        let email = $('#email').val();
        let msg = '';

        if($('resultado').hasClass('alert alert-success')){
            $('resultado').removeClass('alert alert-success');
        }
        if($('resultado').hasClass('alert alert-danger')){
            $('resultado').removeClass('alert alert-danger');
        }

        if(nome === '' || email ===''){
            msg = 'Dados incompletos';
            $('#resultado').addClass('alert alert-danger');
        }
        else{
            msg = `Nome: ${nome} <br/>Email: ${email}`;
            $('#resultado').addClass('alert alert-success');
        }

        $('#resultado').hide();
        $('#resultado').html(msg);
        $('#resultado').fadeIn(300);
        $('#resultado').fadeOut(3000);
    })
});