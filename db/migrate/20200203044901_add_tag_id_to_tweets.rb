class AddTagIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :tag_id, :integer 
    # add_reference :tweets, :tag, foreign_key: true
  end
end
