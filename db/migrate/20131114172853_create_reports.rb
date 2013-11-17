class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :contents
      t.integer :report_type

      t.timestamps
    end
  end
end
