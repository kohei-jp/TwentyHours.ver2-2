$(function() {
  var search_list = $(".contents.row")

  function appendTweet(tweet) {
    if(tweet.user_sign_in && tweet.user_sign_in.id == tweet.user_id) {
      var current_user = `<li>
                            <a href="/tweets/${tweet.id}/edit" data-method="get" >編集</a>
                          </li>
                          <li>
                            <a href="/tweets/${tweet.id}" data-method="delete" >削除</a>
                          </li>`
    } else {
      var current_user = ""
    }

    var html = `<div animation="bounceIn" class="content_post bounceIn" style="background-image:  url(${tweet.image});">
                  <div class="tag_index">
                    ${ tweet.tag_name }
                  </div>

                  <div class="more">
                    <span><img src="/arrow_top.png"></span>
                    <ul class="more_list">
                      <li>
                        <a href="/tweets/${tweet.id}" data-method="get" >詳細</a>
                      </li>
                      ${current_user}
                    </ul>
                  </div>

                  <div class="name">

                    <a class="fav" rel="nofollow" data-method="post" href="/tweets/1/favorites">
                      <i class="fas fa-heart like-btn"></i>
                      ${tweet.fav_count}
                    </a>

                    <a rel="nofollow" data-method="post" href="/users/1/relationships">フォローする</a>

                    <a href="/users/${tweet.user_id}">
                      ${ tweet.name }
                    </a>
                  </div>

                  <div class="text">
                    ${ tweet.text }<br>
                    today:${tweet.time}h 
                  </div>
                </div>`
    search_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
    var html = `<div class="name> ${msg}</div>`
    search_list.append(html);
  }

  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    // console.log(input);
    $.ajax({
      type: "GET",
      url: "/tweets/searches",
      data: { keyword: input},
      dataType: "json"
    })
    .done(function(tweets){
      $(".contents.row").empty();
      if(tweets.length !== 0) {            //tweetsにデータがあれば
        tweets.forEach(function(tweet){
          console.log(tweet);
          appendTweet(tweet);
        });
      }
      else {
        appendErrMsgToHTML("一致するツイートがありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});