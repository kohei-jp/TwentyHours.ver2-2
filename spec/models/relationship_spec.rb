# require 'rails_helper'
# describe Relationship do
#   before do
#     user = FactoryBot.create(:user)
#   end

#   describe '#create' do
#     # 1. following_id, follower_idが存在すれば登録できること
#     it "is valid with a following_id, follower_id" do
#       relationship = build(:relationship)
#       expect(relationship).to be_valid
#     end

#     # 2. textが空では登録できないこと
#     it "is invalid without a following_id" do
#       relationship = build(:relationship, following_id:"")
#       relationship.valid?
#       expect(relationship.errors[:following]).to include("を入力してください")
#     end

#     # 3. textが空では登録できないこと
#     it "is invalid without a follower_id" do
#       relationship = build(:relationship, follower_id:"")
#       relationship.valid?
#       expect(relationship.errors[:follower]).to include("を入力してください")
#     end
#   end
# end