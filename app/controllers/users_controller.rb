class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show # routingで[:id]が渡ってきている
    @user = User.find(params[:id])
    @tags = @user.tags 
    @name = @user.name
    @tweets = current_user.tweets.includes(:user, :tag).order("created_at DESC").page(params[:page]).per(9)
    @times = Tweet.group('user_id, tag_id').sum(:time) #fav用
    @mytimes = @user.tweets.group_by_day(:created_at).sum(:time).to_a
    binding.pry

    # @pietimes = @tags.includes(:tweets).group_by(:tag_name).sum(:time) 上手くいかない
    @pietimes = @user.tweets.includes(:tag).group('tag_name').sum(:time).to_a

    tweets = @user.tweets #fav用
    @favorite_tweets = @user.favorite_tweets #fav用
    # favorite_tweetsとは、user.rbで定義した、favしたtweetsテーブルのこと

    # user = User.find(params[:id]) #follow用
    @fallow_users = @user.followings #follow用

    # user = User.find(params[:id]) #follower用
    @follower_users = @user.followers #follower用


  end

  # 円グラフのやつ??
  def calc_total
    tweets.joins(:tags)
      .group(Tweets.arel_table[:id]).select('project_users.*, sum(work_time) as sum_work_times, sum(extra_cost) as sum_extra_costs')
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
