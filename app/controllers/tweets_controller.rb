class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all #tweet tableを全て引っ張ってくる
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end



  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to tweets_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:time, :image, :text)
  end

end
