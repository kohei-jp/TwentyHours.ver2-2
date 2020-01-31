class Tweet < ApplicationRecord
  validates:time, presence: true
  validates:text, length: { maximum: 10 }
  belongs_to :user
  has_many :comments
end
