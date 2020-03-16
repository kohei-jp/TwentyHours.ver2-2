require 'rails_helper'
describe Tag do
  describe '#create' do
    # 1. tag_id, tag_nameが存在すれば登録できること
    it "is valid with a tag_name, tag_id" do
      tag = build(:tag)
      expect(tag).to be_valid
    end

    # 2. tag_nameが空では登録できないこと
    it "is invalid without a tag_name" do
      tag = build(:tag, tag_name:"")
      tag.valid?
      expect(tag.errors[:tag_name]).to include("を入力してください")
    end
  end
end