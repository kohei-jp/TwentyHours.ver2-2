class Tweets::SearchesController < ApplicationController
  def index
    # binding.pry
    @tweets = Tweet.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end
end
