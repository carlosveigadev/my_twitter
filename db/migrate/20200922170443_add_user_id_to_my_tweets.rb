class AddUserIdToMyTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :my_tweets, :user_id, :integer
  end
end
