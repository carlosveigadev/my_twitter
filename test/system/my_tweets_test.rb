require "application_system_test_case"

class MyTweetsTest < ApplicationSystemTestCase
  setup do
    @my_tweet = my_tweets(:one)
  end

  test "visiting the index" do
    visit my_tweets_url
    assert_selector "h1", text: "My Tweets"
  end

  test "creating a My tweet" do
    visit my_tweets_url
    click_on "New My Tweet"

    fill_in "Mytweet", with: @my_tweet.mytweet
    click_on "Create My tweet"

    assert_text "My tweet was successfully created"
    click_on "Back"
  end

  test "updating a My tweet" do
    visit my_tweets_url
    click_on "Edit", match: :first

    fill_in "Mytweet", with: @my_tweet.mytweet
    click_on "Update My tweet"

    assert_text "My tweet was successfully updated"
    click_on "Back"
  end

  test "destroying a My tweet" do
    visit my_tweets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My tweet was successfully destroyed"
  end
end
