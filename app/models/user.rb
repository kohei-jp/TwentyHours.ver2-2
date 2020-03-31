class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,30}+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :password,    presence: true, format: { with: VALID_PASSWORD_REGEX, message: 'は6文字以上の英字と数字両方を含むパスワードを設定してください' }
  validates :email,       presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :name,        presence: true, length: { maximum: 6 }

  has_many :tweets
  has_many :comments
  has_many :tags, through: :tweets
  has_many :favorites
  has_many :favorite_tweets, through: :favorites, source: :tweet

  # 自分がフォローしているユーザーとの関連
  # フォローする側のUserから見て、フォローされる側のUserを(中間テーブルを介して)集める。なので親はfollowing_id(フォローする側)
  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
  # 中間テーブルを介して「follower」モデルのUser(フォローされた側)を集めることを「followings」と定義
  has_many :followings, through: :active_relationships, source: :follower

  # 自分がフォローされるユーザーとの関連
  # フォローされる側のUserから見て、フォローしてくる側のUserを(中間テーブルを介して)集める。なので親はfollower_id(フォローされる側)
  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  # 中間テーブルを介して「following」モデルのUser(フォローする側)を集めることを「followers」と定義
  has_many :followers, through: :passive_relationships, source: :following

  def followed_by?(user)
    # 今自分(引数のuser)がフォローしようとしているユーザー(レシーバー)がフォローされているユーザー(つまりpassive)の中から、引数に渡されたユーザー(自分)がいるかどうかを調べる
    passive_relationships.find_by(following_id: user.id).present?
  end
end
