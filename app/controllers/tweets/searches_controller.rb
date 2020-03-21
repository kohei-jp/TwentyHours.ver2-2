class Tweets::SearchesController < ApplicationController
  def index
    @tweets = Tweet.search(params[:keyword])
    @times = Tweet.joins(:tag, :user).group('name').group('tag_name').sum(:time)
    respond_to do |format|
      format.html
      format.json
    end
  end
end
