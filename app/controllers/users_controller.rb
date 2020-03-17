class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show # routingで[:id]が渡ってきている
    @user = User.find(params[:id])
    @tags = @user.tags 
    @name = @user.name
    @tweets = current_user.tweets.includes(:user, :tag).order("created_at DESC").page(params[:page]).per(9)
    @pietimes = @user.tweets.includes(:tag).group('tag_name').sum(:time).to_a
    
    @times = Tweet.group('user_id, tag_id').sum(:time) #fav用
    tweets = @user.tweets #fav用
    @favorite_tweets = @user.favorite_tweets #fav用
    # favorite_tweetsとは、user.rbで定義した、favしたtweetsテーブルのこと

    @mytimes = @user.tweets.group_by_day(:created_at).sum(:time).to_a
    @mytimes_date = @mytimes.transpose[0].to_s
    @mytimes_hour = @mytimes.transpose[1]
    # binding.pry
    # @graph = LazyHighCharts::HighChart.new('graph') do |f|
    #   f.title(text: "Total学習時間[h]")
    #   f.xAxis(name: "時間", categories: @mytimes_date)
    #   f.series(name: "学習時間[h]", data: @mytimes_hour)
    #   f.chart(
    #     backgroundColor: {
    #       linearGradient: [0, 0, 500, 500],
    #       stops: [
    #         [0, "gray"],
    #         [1, "gray"],
    #       ]
    #     },
    #     plotBackgroundColor: "gray",
    #     plotShadow: true,
    #     plotBorderWidth: 1
    #   )
    #   f.colors(["white"])
    # end

    # 修正版
    # @chart = LazyHighCharts::HighChart.new('graph') do |f|
    #   f.title(text: "Total学習時間[h]")
    #   f.xAxis(name: "時間", categories: @mytimes_date)
    #   f.series(name: "学習時間[h]", data: @mytimes_hour)
    
    #   f.legend(align: 'right', verticalAlign: 'top', y: 20, layout: 'vertical')
    #   f.chart({defaultSeriesType: "column"})
    # end
    
    # @chart_globals = LazyHighCharts::HighChartGlobals.new do |f|
    #   # f.global(useUTC: false)
    #   f.chart(
    #     backgroundColor: {
    #       linearGradient: [0, 0, 500, 500],
    #       stops: [
    #         [0, "gray"],
    #         [1, "gray"]
    #       ]
    #     },
    #     borderWidth: 2,
    #     plotBackgroundColor: "gray",
    #     plotShadow: true,
    #     plotBorderWidth: 1
    #   )
    #   f.lang(thousandsSep: ",")
    #   f.colors(["white"])
    # end

    # @chart = LazyHighCharts::HighChart.new('graph') do |f|
    #   f.options[:lang] = { noData: "My beautiful noData message" }
    #   f.title(text: nil)
    #   f.series([])
    # end




    # user = User.find(params[:id]) #follow用
    @fallow_users = @user.followings #follow用

    # user = User.find(params[:id]) #follower用
    @follower_users = @user.followers #follower用


  end

  # 円グラフ
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
