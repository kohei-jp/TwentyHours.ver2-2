require 'rails_helper'
describe Comment do
  describe '#create' do
    # 1. tag_name, user_id, tweet_nameが存在すれば登録できること
    it "is valid with a text,user_id, tweet_id" do
      comment = build(:comment)
      expect(comment).to be_valid
    end

    # 2. textが空では登録できないこと
    it "is invalid without a text" do
      comment = build(:comment, text:"")
      comment.valid?
      expect(comment.errors[:text]).to include("を入力してください")
    end

    # 3. textが32文字以上であれば登録できないこと
    it "is invalid with a text that has more than 32 characters " do
      comment = build(:comment, text: "a" * 33)
      comment.valid?
      expect(comment.errors[:text]).to include("は32文字以内で入力してください")
    end

    # 4. textが32文字以下では登録できること
    it "is valid with a text that has less than 32 characters " do
      comment = build(:comment, text: "a" * 32)
      expect(comment).to be_valid
    end
  end
end