class UsersController < ApplicationController

  def show # routingで[:id]が渡ってきている
    user = User.find(params[:id])
    @tags = user.tags #これでいいはず(リレーションが上手くいっていれば)
    @name = user.name
    @tweets = user.tweets.page(params[:page]).per(9).order("created_at DESC")
    @times = Tweet.group('user_id, tag_id').sum(:time)

    tweets = user.tweets #fav用
    @favorite_tweets = user.favorite_tweets #fav用
    # favorite_tweetsとは、user.rbで定義した、favしたtweetsテーブルのこと
  end

  def calc_total
    tweets.joins(:tags)
      .group(Tweets.arel_table[:id]).select('project_users.*, sum(work_time) as sum_work_times, sum(extra_cost) as sum_extra_costs')
  end

end
