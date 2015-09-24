class CreateRefutations < ActiveRecord::Migration
  def change
    create_table :refutations do |t|
      t.text :proof
      t.references :users, index: true, foreign_key: true
      t.references :proposal, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
