class CreateToushikomonBoards < ActiveRecord::Migration
  def change
    create_table :toushikomon_boards do |t|
      t.string :title
      t.integer :toushikomon_id

      t.timestamps
    end
  end
end
