# Twenty Hours
「日々の学習」を、共有・記録するアプリケーション
<br>


<img style=" width: 80% display: block; text-align: center;" alt="アプリ トップ" src="https://user-images.githubusercontent.com/55340851/75805232-cd721380-5dc4-11ea-8602-1429e165a524.png">


## アプリ概要
①習得したいスキルをタグ付けして、学習時間と一緒に投稿。  
↓  
②特徴としては、スキルを習得する際のノウハウとして、出来るだけハードルを低くし、  
  同じタグで「20時間」を達成  のゴールとしている。  
↓  
③スキルの習得する際のハードルを下げて、継続を促すアプリ。  
↓  
④学習の継続を見える化するために、学習時間のグラフ表示。  
  各タグについて達成率を円グラフにて表示。  
↓  
⑤他の人をフォローし合え、お互いの進捗を一覧画面でも確認可能。  
↓  
⑤達成感を得られ、継続力がUPという感じです。  


## 機能一覧
・ユーザ登録、ログイン機能  
・ユーザー間でのフォロー、フォロワー機能  
・ツイート投稿機能(画像プレビュー表示)  
・ツイート検索機能(インクリメンタルサーチ)  
・ツイートタグ付け機能  
・ツイートへのコメント(ajax)  
・ツイートへの良いね機能  
・タグ付けされたツイートの合計時間を円グラフ表示  
・日々の学習時間のグラフ表示  
・ページネーション機能(kaminari)  


## 使用技術
- Ruby 2.6.2  
- Rails 5.2.4  
- Haml/Scss   
- JQuary  
- MySQL 5.6
- GitHub, Git    
- Capstrano
- AWS
  - EC2  Amazon Elastic Compute Cloud 
  - S3  Amazon Simple Storage Service
  - ALB  Application Load Balancer
- Nginx, Unicorn  
<!-- - Rspec  -->

<p text-align: center>
  <a href="https://rubyonrails.org/"><img src="https://meltingrabbit.com/blog/article/2018081501/top.jpg" height="45px"; /></a>
  <a href="http://haml.info/"><img src="https://glaucocustodio.github.io/assets/haml-cover.jpg?1" height="50px;" /></a>
  <a href="https://sass-lang.com/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Sass_Logo_Color.svg/1920px-Sass_Logo_Color.svg.png" height="45px;" margin-bottom="10px;" /></a>
  <a href="https://jquery.com/"><img src="https://web-camp.io/magazine/wp-content/uploads/2017/03/JQuery_logo-1-1.png" height="50px;" /></a>
  <br>
  <a href="https://github.com/capistrano/capistrano"><img src="https://user-images.githubusercontent.com/55340851/76217207-553c9f80-6255-11ea-83ad-a637b64b9b11.png" height="45px"; width="100px;" /></a>
  <a href="https://aws.amazon.com/jp/ec2/"><img src="https://blog.ismg.kdl.co.jp/wp-content/uploads/2017/05/ec2.png" height="60px;" /></a>
  <a href="https://aws.amazon.com/jp/s3/"><img src="https://user-images.githubusercontent.com/55340851/76168205-d55cf980-61b0-11ea-8f98-b4778577810e.png" height="60px"; /></a>
  <a href="https://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/application/introduction.html"><img src="https://user-images.githubusercontent.com/55340851/76168199-c9713780-61b0-11ea-8066-bb5ea1321e2f.png" height="60px"; /></a>
</p>


## 🌐 App URL
http://20hours-1582419451.ap-northeast-1.elb.amazonaws.com/


## 💬 Usage
https://github.com/kohei-jp/TwentyHours.ver2-2.git
- テストユーザ用アカウント(Email / Password)
  - Email: test@gmail.com
  - Password: aaaa1111  
※ ヘッダーの「ログインボタン」よりログイン出来ます。

## 👀 Author's blog
https://xkoh.hatenadiary.com/archive/2020
<br>

## ER図
￼￼<img width="70%" alt="ER図" src="https://user-images.githubusercontent.com/55340851/75799983-3f922a80-5dbc-11ea-885b-a2f554fded03.png">

## 機能紹介

### 投稿機能
・タグ投稿機能、プレビュー画像表示、コメント投稿<br>
※現在、本番環境でjsが効いておらず、一時的にプレビュー画像が出ません。
<img style=" width: 75% display: block; text-align: center;" alt="投稿機能" src="https://user-images.githubusercontent.com/55340851/76150083-d119d900-60e9-11ea-839e-9baf258ef83b.png">

### マイページ
・タグ別達成率表示(円グラフ)、日々の学習時間表示(線グラフ)<br>
・お気に入りの投稿表示、フォロー/フォロワー表示
<img style=" width: 85% display: block; text-align: center;" alt="マイページ" src="https://user-images.githubusercontent.com/55340851/76150151-995f6100-60ea-11ea-8d0d-1aa593998c9c.png">

### その他
#### ・詳細画面
コメント投稿機能(ajax通信)

## 今後実装したい技術
・現在、シンプルな見た目になっており、スキル習得した際の  
  アニメーションの演出など、UIをリッチにしていきたい。  
・コードを美しく書く  
・Rspecの導入  
・Docker  
・CircleCI  
