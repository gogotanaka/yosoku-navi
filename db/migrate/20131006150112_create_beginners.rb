class CreateBeginners < ActiveRecord::Migration
  def change
    create_table :beginners do |t|
      t.string :title
      t.integer :category
      t.text :contents

      t.timestamps
    end
  end
end
