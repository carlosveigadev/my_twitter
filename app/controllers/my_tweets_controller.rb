class MyTweetsController < ApplicationController
  before_action :set_my_tweet, only: [:show, :edit, :update, :destroy]

  # GET /my_tweets
  # GET /my_tweets.json
  def index
    @my_tweets = MyTweet.all.order('created_at DESC')
  end

  # GET /my_tweets/1
  # GET /my_tweets/1.json
  def show
  end

  # GET /my_tweets/new
  def new
    @my_tweet = MyTweet.new
  end

  # GET /my_tweets/1/edit
  def edit
  end

  # POST /my_tweets
  # POST /my_tweets.json
  def create
    @my_tweet = MyTweet.new(my_tweet_params)

    respond_to do |format|
      if @my_tweet.save
        format.html { redirect_to @my_tweet, notice: 'My tweet was successfully created.' }
        format.json { render :show, status: :created, location: @my_tweet }
      else
        format.html { render :new }
        format.json { render json: @my_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_tweets/1
  # PATCH/PUT /my_tweets/1.json
  def update
    respond_to do |format|
      if @my_tweet.update(my_tweet_params)
        format.html { redirect_to @my_tweet, notice: 'My tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_tweet }
      else
        format.html { render :edit }
        format.json { render json: @my_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_tweets/1
  # DELETE /my_tweets/1.json
  def destroy
    @my_tweet.destroy
    respond_to do |format|
      format.html { redirect_to my_tweets_url, notice: 'My tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_tweet
      @my_tweet = MyTweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_tweet_params
      params.require(:my_tweet).permit(:mytweet)
    end
end
