class RemoveTagFromTweets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :tag, :string
  end
end
