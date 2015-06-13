class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :name
      t.integer :value
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
