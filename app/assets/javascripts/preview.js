$(function(){
  $('#preview').on('click', function(){
    console.log('hello');
    var text = $('#md-textarea').val();
    if(text == ''){
      return;
    }
    $.ajax({
      url: '/api/articles/preview',
      type: 'GET',
      dataType: 'json',
      data: { body: text }
    })
    .done(function(html){
      console.log('hello');
      $('#md-textarea').parent().css('display', 'none');
      $('#preview-area').append(html.body);
      $('#markdown').removeClass('disabled');
      $('#preview').addClass('disabled');
    })
    .fail(function(){
      console.log('hello');
      alert('failed for markdown preview');
    })
  })

  $('#markdown').on('click', function(){
    $('#md-textarea').parent().css('display', '');
    $('#preview-area').empty();
    $('#preview').removeClass('disabled');
    $('#markdown').addClass('disabled');
  })

});