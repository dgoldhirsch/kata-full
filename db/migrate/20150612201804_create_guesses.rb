class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :name
      t.integer :value
      t.integer :user_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
