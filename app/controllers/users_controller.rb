class UsersController < ApplicationController

  def show # routingで[:id]が渡ってきている
    user = User.find(params[:id])
    @tags = user.tags #これでいいはず(リレーションが上手くいっていれば)
    @name = user.name
    @tweets = user.tweets.page(params[:page]).per(9).order("created_at DESC")
  end
end
