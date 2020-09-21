require 'test_helper'

class MyTweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_tweet = my_tweets(:one)
  end

  test "should get index" do
    get my_tweets_url
    assert_response :success
  end

  test "should get new" do
    get new_my_tweet_url
    assert_response :success
  end

  test "should create my_tweet" do
    assert_difference('MyTweet.count') do
      post my_tweets_url, params: { my_tweet: { mytweet: @my_tweet.mytweet } }
    end

    assert_redirected_to my_tweet_url(MyTweet.last)
  end

  test "should show my_tweet" do
    get my_tweet_url(@my_tweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_tweet_url(@my_tweet)
    assert_response :success
  end

  test "should update my_tweet" do
    patch my_tweet_url(@my_tweet), params: { my_tweet: { mytweet: @my_tweet.mytweet } }
    assert_redirected_to my_tweet_url(@my_tweet)
  end

  test "should destroy my_tweet" do
    assert_difference('MyTweet.count', -1) do
      delete my_tweet_url(@my_tweet)
    end

    assert_redirected_to my_tweets_url
  end
end
