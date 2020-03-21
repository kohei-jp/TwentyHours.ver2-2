class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @tags = @user.tags
    @name = @user.name
    @tweets = current_user.tweets.includes(:user, :tag).order("created_at DESC").page(params[:page]).per(9)
    # 円グラフ
    @pietimes = @user.tweets.includes(:tag).group('tag_name').sum(:time).to_a

    # fav用
    @times = Tweet.group('user_id, tag_id').sum(:time)
    @favorite_tweets = @user.favorite_tweets
    # favorite_tweetsとは、user.rbで定義した、favしたtweetsテーブルのこと

    # Chart.js用
    @mytimes = @user.tweets.group_by_day(:created_at).sum(:time).to_a
    @mytimes_date = @mytimes.transpose[0].to_a
    @mytimes_hour = @mytimes.transpose[1].to_a

    @sums = []
    sum = 0
    @mytimes_hour.each do |num|
      sum += num
      @sums << sum
    end

    # user = User.find(params[:id]) #follow用
    @fallow_users = @user.followings # follow用

    # user = User.find(params[:id]) # follower用
    @follower_users = @user.followers # follower用
  end

  def follows
    user = User.find(params[:id])
    @users = user.followings
    redirect_to tweet_path
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
    redirect_to tweet_path
  end
end