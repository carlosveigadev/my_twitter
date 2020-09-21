class CreateMyTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :my_tweets do |t|
      t.text :mytweet

      t.timestamps
    end
  end
end
