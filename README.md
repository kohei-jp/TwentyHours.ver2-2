# 20Hours
## ■ アプリの概要
「日々の学習」を、共有・記録するアプリケーション
<br>

<p text-align: center>
  <img src="https://user-images.githubusercontent.com/55340851/77147824-8d53a600-6ad1-11ea-8dfb-a6a48cca187a.png" height="500px"; width="49%"; />
  <img src="https://user-images.githubusercontent.com/55340851/77151919-461de300-6ada-11ea-9351-eb09d4a02543.png" height="500px"; width="49%"; />
  <img src="https://user-images.githubusercontent.com/55340851/76150083-d119d900-60e9-11ea-839e-9baf258ef83b.png" height="500px"; width="49%"; />
  <img src="https://user-images.githubusercontent.com/55340851/77145859-0ac8e780-6acd-11ea-96a8-046578262f79.png" height="500px"; width="49%"; />
</p>



## ■ コンセプト
何か新しいことを始める際、なかなか継続出来ない事が多々ある。  
プロになるには、1万時間継続して取り組む事が必要と言われているが、  
まずは、とにかく20時間取り組んでみよう。20時間あれば恐ろしく下手な状態から、  
そこそこ楽しめるようになる。  
そんな、新しい事に挑戦したい方に使って頂きたいアプリになっております。  

## ■ 内容
・習得したいスキルをタグ付けして、学習時間と一緒に投稿する。  
・スキル毎に、学習時間が積算されていき、マイページにて、スキルごとの達成率を円グラフで表示。  
 　20時間を達成すると、達成率が%表示からSuccessに変わり、視覚的に分かりやすい様になってます。  
・また、日々の学習時間をグラフ表示させ、努力の見える化をしました。

## ■ なぜ作ろうと思ったか 
・私自身出来ることを増やしたいと思いつつも、いざ新しい事に取り組むと慣れていない分継続するのは  
 　ストレスがかかり、結局何か言い訳してやめてしまったり、「継続」する事が難しさを常々感じております。  
 　継続するスキルが最も重要だという思い、それをサポートしてくれるアプリを作りました。  
・また、スキル習得の目安時間を20時間としたのは、「 The First 20 Hours: How to Learn Anything...Fast! 」の著者  
　でTEDTalkで講演などもされていっらしゃるJosh・Kaufmanさんのスキル習得ノウハウをヒントに設計しました。   


## ■ 機能一覧
・ユーザ登録、ログイン機能  
・ユーザー間でのフォロー、フォロワー機能  
・ツイート投稿機能(画像プレビュー表示)  
・ツイート検索機能(インクリメンタルサーチ)  
・ツイートタグ付け機能  
・ツイートへのコメント(ajax)  
・ツイートへの良いね機能  
・タグ付けされたツイートの合計時間を円グラフ表示  
・日々の学習時間のグラフ表示(Chart.js)  
・ページネーション機能(kaminari)  


## ■ 使用技術
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
- Rspec 
- Rubocup

<p>
  <img src="https://meltingrabbit.com/blog/article/2018081501/top.jpg" height="50px"; width="70px"; margin-left="50px"; display="block"; />
  <img src="https://glaucocustodio.github.io/assets/haml-cover.jpg?1" height="55px"; width="130px"; />
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Sass_Logo_Color.svg/1920px-Sass_Logo_Color.svg.png" height="45px"; />
  <img src="https://web-camp.io/magazine/wp-content/uploads/2017/03/JQuery_logo-1-1.png" height="55px"; width="120px"; />
</p>
<p>
  <img src="https://user-images.githubusercontent.com/55340851/76217207-553c9f80-6255-11ea-83ad-a637b64b9b11.png" height="45px"; width="100px"; />
  <img src="https://blog.ismg.kdl.co.jp/wp-content/uploads/2017/05/ec2.png" height="60px"; />
  <img src="https://user-images.githubusercontent.com/55340851/76168205-d55cf980-61b0-11ea-8f98-b4778577810e.png" height="60px"; />
  <img src="https://user-images.githubusercontent.com/55340851/76168199-c9713780-61b0-11ea-8066-bb5ea1321e2f.png" height="60px"; width="60px"; />
  <img src="https://user-images.githubusercontent.com/55340851/77221004-ff3af680-6b88-11ea-84aa-c4cbf94d03a2.png" height="60px"; />
</p>


## 🌐 App URL
http://20hours-1582419451.ap-northeast-1.elb.amazonaws.com/
- テストユーザ用アカウント(Email / Password)
  - Email: test@gmail.com
  - Password: aaaa1111  
※ ヘッダーの「ログイン」ボタンよりログイン出来ます。

## 💬 Usage
https://github.com/kohei-jp/TwentyHours.ver2-2.git

## 👀 Author's blog
https://xkoh.hatenadiary.com/archive/2020
<br>

## ■ ER図
￼￼<img width="70%" alt="ER図" src="https://user-images.githubusercontent.com/55340851/75799983-3f922a80-5dbc-11ea-885b-a2f554fded03.png">

## ■ 機能紹介

### 投稿機能
・タグ投稿機能、プレビュー画像表示、コメント投稿<br>
<p>
<img src="https://user-images.githubusercontent.com/55340851/76150083-d119d900-60e9-11ea-839e-9baf258ef83b.png" height="550px"; width="60%"; />
</p>

### マイページ
・タグ別達成率表示(円グラフ)、日々の学習時間表示(線グラフ)<br>
・お気に入りの投稿表示、フォロー/フォロワー表示<br>
<p>
<img src="https://user-images.githubusercontent.com/55340851/77145859-0ac8e780-6acd-11ea-96a8-046578262f79.png" height="600px"; width="60%"; />
</p>

### その他
#### ・詳細画面
コメント投稿機能(ajax通信)
#### ・編集画面


## ■ 今後実装したい技術
・20時間の学習が達成し、スキル習得した際にアニメーション演出など、  
　モチベーションが上がる様なリッチなUIにする。    
・Twitter APIを搭載し、こちらのアプリでの学習報告をTwitterにも発信を行える様にする。  
・チャット機能を実装し、ユーザ間でコミュニケーションが取れる様にする。   
・コードを美しく書く    
・Dockerの導入  
