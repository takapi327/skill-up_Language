$(function(){
  $('.fa-search-plus').on('click',function(){
    $('.js-modal').fadeIn();
    return false;
  });
  $('.js-modal-close').on('click',function(){
    $('.js-modal').fadeOut();
    return false;
  });

  // インクリメンタルサーチの記述
  var search_list = $(".model__show.row");

  function appendLanguage(language){
    var html = `<a href="/languages/${language.id}">
                  <div class="language__detail__box">
                    <div class="language__detail__box__day">
                      ${language.day}
                      ${language.study}
                      ${language.name}
                    </div>
                    <div class="language__detail__box__image">
                      <img src=${language.image} width="200" height="200">
                    </div>
                    <div class="language__detail__box__tittle">
                      ${language.tittle}
                    </div>
                  </div>
                </a>`
    search_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
    var html = `<div class='name'>${ msg }</div>`
    search_list.append(html);
  }

  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/languages/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(languages) {
      search_list.empty();
      if(languages.length !== 0){
        languages.forEach(function(language){
          appendLanguage(language);
        });
      }else{
        appendErrMsgToHTML("一致する投稿がありません");
      }
      // フォームに文字がないと削除する
      if(input.length == 0){
        search_list.empty();
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});