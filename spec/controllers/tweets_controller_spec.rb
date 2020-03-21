require 'rails_helper'

describe TweetsController do
  describe "GET #new" do
    # ユーザを生成
    before do
      user = FactoryBot.create(:user)
      # 作ったユーザでログイン
      sign_in user
    end
    it "renders the :new template" do
      get :new # 疑似的にnewアクションに遷移することを確かめる。
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    before do
      user = FactoryBot.create(:user)
      sign_in user
    end

    it "assigns the requested tweet to @tweet" do # 変数の確認
      tweet = create(:tweet) # fbotよりdemoデータ生成
      get :edit, params: { id: tweet } # idに上記のtweet_idをセット
      expect(assigns(:tweet)).to eq tweet # 変数@tweetをシンボル型で取得
    end

    it "renders the :edit template" do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(response).to render_template :edit
    end
  end

  describe 'GET #index' do
    it "populates an array of tweets ordered by created_at DESC" do
      tweets = create_list(:tweet, 3) # tweetを3つ保存
      get :index # indexアクションにリクエスト
      expect(assigns(:tweets)).to match(tweets.sort { |a, b| b.created_at <=> a.created_at }) # <=> 演算子、ブロック変数
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end
end