class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :image
      t.string :text
      t.integer :time, null: false
      t.string :tag, null:false
      t.timestamps
    end
  end
end
