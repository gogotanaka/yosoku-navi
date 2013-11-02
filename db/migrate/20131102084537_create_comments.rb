class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :sender
      t.text :contents
      t.integer :board_id
      t.integer :stock_id
      t.integer :comment_id
      t.integer :consultant_id
      t.timestamps
    end
  end
end
