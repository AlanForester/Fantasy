class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.text :idea
      t.integer :creator_id

      t.timestamps null: false
    end
  end
end
