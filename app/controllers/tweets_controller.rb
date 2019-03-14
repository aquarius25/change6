class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.includes(:user).order("created_at ASC")
  end

  def new
  end

  def create
    @tweet = Tweet.new(tweet_params)
      @tweet.save
    redirect_to index: :action
  end

  def edit
  end

  def show
  end




  private

  def tweet_params
    params.require(:tweet).permit(:text,:image).merge(user_id: current_user.id)
  end
end
