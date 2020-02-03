class Tweet < ApplicationRecord
  validates:time, presence: true
  validates:text, length: { maximum: 10 }
  belongs_to :user
  has_many :comments
  belongs_to :tag

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('text LIKE(?)', "%#{search}%")
  end

end
