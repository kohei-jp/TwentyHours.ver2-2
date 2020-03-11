$("#menu li").hover(function() {
  $(this).children('ul').show();
}, function() {
  $(this).children('ul').hide();
});


// tweets/new.html.haml(プレビュー画像)
$(function(){
  $fileField = $('#file')
  // 選択された画像を取得し表示
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $("#img_field");
 
    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: "50%",
          class: "preview",
          title: file.name
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
});


//アニメーション属性を持つ要素を非表示、animated属性を追加
$('*[animation]').addClass('invisible animated');

$(window).scroll(function () {
    $('*[animation]').each(function () {
    //アニメーションをさせる要素の上の位置
        var imgPos = $(this).offset().top;
    //ウインドウ上部の位置
        var scroll = $(window).scrollTop();
    //アニメーションを発火させる位置
        var position = imgPos - window.innerHeight + window.innerHeight / 5;

    //animation属性に記載されたアニメーション名を取得
    if (this.hasAttribute('animation')) {
        var animation = this.getAttribute('animation');
    }
    //発火位置まで来たら要素を表示し、アニメーションをclass名に追加
    if (scroll > position) {
            $(this).removeClass('invisible').addClass(animation);
        }
    //ページのトップまでスクロールしたら要素を非表示（リセット）
        if (scroll < 10) {
            $(this).removeClass(animation).addClass('invisible');
        }
    });
});