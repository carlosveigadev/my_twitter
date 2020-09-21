json.extract! my_tweet, :id, :mytweet, :created_at, :updated_at
json.url my_tweet_url(my_tweet, format: :json)
