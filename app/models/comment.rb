class Comment < ApplicationRecord
  validates :text, presence: true, length: { maximum: 32 }
  belongs_to :tweet
  belongs_to :user
end
