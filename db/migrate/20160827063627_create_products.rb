class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :lister
      t.text :description
      t.integer :bid
      t.text :bidder
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
