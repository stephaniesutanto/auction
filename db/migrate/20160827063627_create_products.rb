class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :lister
      t.integer :user_id
      t.text :description
      t.integer :starting_bid
      # t.text :bidder
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
