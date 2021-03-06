# 20Hours 
## ■ アプリの概要
「日々の学習」を、共有・記録するアプリケーション
<br>

<p text-align: center>
  <img src="https://user-images.githubusercontent.com/55340851/77147824-8d53a600-6ad1-11ea-8dfb-a6a48cca187a.png" height="500px"; width="49%"; />
  <img src="https://user-images.githubusercontent.com/55340851/77151919-461de300-6ada-11ea-9351-eb09d4a02543.png" height="500px"; width="49%"; />
  <img src="https://user-images.githubusercontent.com/55340851/77145859-0ac8e780-6acd-11ea-96a8-046578262f79.png" height="500px"; width="49%"; />
  <img src="https://user-images.githubusercontent.com/55340851/77721307-cb028280-702d-11ea-8965-e6c7f146aba4.png" height="500px"; width="49%"; />
</p>



## ■ コンセプト
何か新しいことを始める際、継続出来ない事が多々ある。  
プロになるには、1万時間継続して取り組む事が必要と言われているが、  
まずは、とにかく20時間取り組んでみよう。20時間あれば恐ろしく下手な状態から、  
そこそこ楽しめるようになる。  
そんな、新しい事に挑戦したい方に使って頂きたいアプリになっております。  

## ■ 内容
・習得したいスキルをタグ付けして、学習時間と一緒に投稿。  
・スキル毎に学習時間が積算されていき、マイページにてスキル別の達成率を円グラフにて表示。  
 　20時間を達成すると、達成率が%表示からSuccessに変わり、視覚的に分かりやすくなっています。   
・また、日々の学習時間と合計学習時間をグラフ表示させ、努力の見える化をしました。  
・このアプリを使用していないより多くの方にも報告できる様に、Twitterへ投稿内容の共有も可能。  
・google mapにて、最寄りのカフェ(学習スペース)の表示。  

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
・ツイートをTwitterへ共有するリンク機能  
・タグ付けされたツイートの合計時間を円グラフ表示  
・日々の学習時間のグラフ表示(Chart.js)  
・Google_mapより最寄りのカフェを表示(Maps JavaScript API..)  
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
  - Route53 Amazon Route 53
- Nginx, Unicorn  
- Rspec 
- Rubocup
- HTTPS通信

<p>
  <img src="https://meltingrabbit.com/blog/article/2018081501/top.jpg" height="50px"; width="70px"; margin-left="50px"; display="block"; />
  <img src="https://glaucocustodio.github.io/assets/haml-cover.jpg?1" height="55px"; width="130px"; />
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Sass_Logo_Color.svg/1920px-Sass_Logo_Color.svg.png" height="45px"; />
  <img src="https://web-camp.io/magazine/wp-content/uploads/2017/03/JQuery_logo-1-1.png" height="55px"; width="120px"; />
</p>

<p>
  <img src="https://blog.ismg.kdl.co.jp/wp-content/uploads/2017/05/ec2.png" height="60px"; />
  <img src="https://user-images.githubusercontent.com/55340851/76168205-d55cf980-61b0-11ea-8f98-b4778577810e.png" height="60px"; />
  <img src="https://user-images.githubusercontent.com/55340851/76168199-c9713780-61b0-11ea-8066-bb5ea1321e2f.png" height="60px"; width="60px"; />
  <img src="https://user-images.githubusercontent.com/55340851/77738084-8806d600-7052-11ea-994f-9d22a56f6830.png" height="60px"; />
  <img src="https://user-images.githubusercontent.com/55340851/76217207-553c9f80-6255-11ea-83ad-a637b64b9b11.png" height="45px"; width="100px"; />
  <img src="https://user-images.githubusercontent.com/55340851/77221004-ff3af680-6b88-11ea-84aa-c4cbf94d03a2.png" height="60px"; />
</p>


## 🌐 App URL
https://20hoursapp.com
- テストユーザ用アカウント(Email / Password)
  - Email: test@gmail.com
  - Password: aaaa1111  

#### <操作方法(概要)>  
①Topページ真ん中の水色「WELCOME」ボタンより、投稿一覧画面へ遷移下さい。  
②ヘッダーの「ログイン」ボタンよりログイン出来ます。 上記のdemo ID/Passより  
③ヘッダーの「投稿する」ボタンより投稿。  
④ヘッダーの「ユーザ名」にカーソルを合わせ、プルダウンの項目「マイページ」より  
　投稿内容の合計時間や達成率がグラフにて確認出来ます。  

## 💬 Usage
https://github.com/kohei-jp/TwentyHours.ver2-2.git

## ■ ER図
￼￼<img width="70%" alt="ER図" src="https://user-images.githubusercontent.com/55340851/75799983-3f922a80-5dbc-11ea-885b-a2f554fded03.png">

## ■ 機能紹介

### 投稿機能
・タグ投稿機能、プレビュー画像表示、コメント投稿<br>
<p>
<img src="https://user-images.githubusercontent.com/55340851/76150083-d119d900-60e9-11ea-839e-9baf258ef83b.png" height="550px"; width="65%"; />
</p>

### マイページ
・タグ別達成率表示(円グラフ)、日々の学習時間表示(トレンド&バーグラフ)<br>
・お気に入りの投稿表示、フォロー/フォロワー表示<br>
<p>
<img src="https://user-images.githubusercontent.com/55340851/77145859-0ac8e780-6acd-11ea-96a8-046578262f79.png" height="600px"; width="65%"; />
</p>

### 詳細画面
・コメント投稿機能(ajax通信)  
・Twitterへ投稿内容の共有(投稿本人のみ)
<p>
<img src="https://user-images.githubusercontent.com/55340851/77247918-ead62700-6c78-11ea-8534-2f656badb355.png" height="600px"; width="65%"; />
</p>

### カフェ表示画面
・Google mapより現在地の半径1.5km内の学習スペースとしてカフェを表示出来る。  
　(Geocoding API、Maps JavaScript API、Places APIを使用。)  

<p>
<img src="https://user-images.githubusercontent.com/55340851/77721307-cb028280-702d-11ea-8965-e6c7f146aba4.png" height="600px"; width="65%"; />
</p>

### その他
#### ・ユーザ新規登録画面
#### ・ログイン画面
#### ・投稿編集画面

## ■ 今後実装したい技術
・20時間の学習が達成し、スキル習得した際にアニメーション演出など、  
　モチベーションが上がる様なリッチなUIにする。    
・チャット機能を実装し、ユーザ間で個別にコミュニケーションが取れる様にする。   
・Rspecの記述を増やす  
・コードを美しく書く    
・Dockerの導入  
