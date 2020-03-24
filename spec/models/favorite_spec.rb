require 'rails_helper'
describe Favorite do
  describe '#create' do
    # 1. user_id, tweet_nameが存在すれば登録できること
    it "is valid with a user_id, tweet_id" do
      favorite = build(:favorite)
      expect(favorite).to be_valid
    end

    # 2. tweet_idが空では登録できないこと
    it "is invalid without a tweet_id" do
      favorite = build(:favorite, tweet_id: "")
      favorite.valid?
      expect(favorite.errors[:tweet]).to include("を入力してください")
    end

    # 3. tweet_idが空では登録できないこと
    it "is invalid without a user_id" do
      favorite = build(:favorite, user_id: "")
      favorite.valid?
      expect(favorite.errors[:user]).to include("を入力してください")
    end
  end
end
