class CreateBeginners < ActiveRecord::Migration
  def change
    create_table :beginners do |t|
      t.string :title
      t.string :contents

      t.timestamps
    end
  end
end
