require 'rails_helper'
describe Tweet do
  describe '#create' do
    # 1. time, text,image, user_id, tag_idが存在すれば登録できること
    it "is valid with a time, text,image, user_id, tag_id" do
      tweet = build(:tweet)
      expect(tweet).to be_valid
    end

    # 2. timeが空では登録できないこと
    it "is invalid without a time" do
      tweet = build(:tweet, time:"")
      tweet.valid?
      expect(tweet.errors[:time]).to include("を入力してください")
    end

    # 3. textが16文字以上であれば登録できないこと
    it "is invalid with a text that has more than 16 characters " do
      tweet = build(:tweet, text: "a" * 17)
      tweet.valid?
      expect(tweet.errors[:text]).to include("は16文字以内で入力してください")
    end

    # 4. textが16文字以下では登録できること
    it "is valid with a text that has less than 16 characters " do
      tweet = build(:tweet, text: "a" * 16)
      expect(tweet).to be_valid
    end

    # 5. tag_idが空では登録できないこと
    it "is invalid without a tag" do
      tweet = build(:tweet, tag_id: "")
      tweet.valid?
      expect(tweet.errors[:tag]).to include("を入力してください")
    end

    # 6. user_idが空では登録できないこと
    it "is invalid without a user" do
      tweet = build(:tweet, user_id: "")
      tweet.valid?
      expect(tweet.errors[:user]).to include("を入力してください")
    end
  end
end