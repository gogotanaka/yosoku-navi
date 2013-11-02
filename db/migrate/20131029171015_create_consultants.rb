class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :title
      t.integer :category
      t.text :contents
      t.string :site_name
      t.string :url
      t.string :place
      t.string :person
      t.string :phone
      t.string :kinsyo
      t.string :rate
      t.string :info
      t.string :regist

      t.timestamps
    end
  end
end
