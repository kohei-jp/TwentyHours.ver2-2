class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :comments
  has_many :tags, through: :tweets
  has_many :favorites
  has_many :favorite_tweets, through: :favorites, source: :tweet
#   8行目は本来、"has_many :tweets, through: :favorites"と記述したいが、4行目と重複するため、favorite_tweetsに名称を変更している。
#   →勝手に変えていいのか。  optionで参照元のモデルを "source: :tweet"としているからOK。 
end
