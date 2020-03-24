require 'rails_helper'

describe UsersController do
  describe 'GET #index' do
    before do
      user = FactoryBot.create(:user)
      # 作ったユーザでログイン
      sign_in user
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    # ユーザを生成
    before do
      user = FactoryBot.create(:user) # 作ったユーザでログイン
      sign_in user
    end

    it "assigns the requested user to @tweet" do # 変数の確認
      user = create(:user) # fbotよりdemoデータ生成
      get :show, params: { id: user } # idに上記のuser_idをセット
      expect(assigns(:user)).to eq user # 変数@userをシンボル型で取得
    end

    it "renders the :show template" do
      user = create(:user)
      get :show, params: { id: user }
      expect(response).to render_template :show
    end
  end
end
