class Tweet < ApplicationRecord
  validates:time, presence: true
  validates:text, length: { maximum: 16 }
  validates:tag, presence: true
  validates:user, presence: true

  has_many :comments
  has_many :favorites
  belongs_to :user
  belongs_to :tag
  accepts_nested_attributes_for :tag

  mount_uploader :image, ImageUploader

  def self.search(search)
    return Tweet.all unless search

    Tweet.where('text LIKE(?)', "%#{search}%")
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  # SQLインジェクション対策
  def self.search(search)
    return Tweet.all unless search

    search = "%#{search}%"
    Tweet.find_by_sql(["select * from tweets where text like ? ", search]) # この1行
  end
end
