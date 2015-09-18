class CreateRefutations < ActiveRecord::Migration
  def change
    create_table :refutations do |t|
      t.text :proof
      t.integer :creator_id
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
