class CreateToushikomons < ActiveRecord::Migration
  def change
    create_table :toushikomons do |t|
      t.string :name
      t.string :site_name
      t.string :url
      t.string :adress
      t.string :owner
      t.string :phone
      t.string :kinsyo
      t.text :contents
      t.integer :category

      t.timestamps
    end
  end
end
