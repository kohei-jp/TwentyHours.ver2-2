class ChangeDatatypeTimeOfTweets < ActiveRecord::Migration[5.2]
  def change
    change_column :tweets, :time, :float
  end
end
