class CreateGlossaries < ActiveRecord::Migration
  def change
    create_table :glossaries do |t|
      t.string :title
      t.integer :category
      t.text :contents

      t.timestamps
    end
  end
end
