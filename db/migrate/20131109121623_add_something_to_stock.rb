class AddSomethingToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :margin_buying, :string
    add_column :stocks, :margin_selling, :string
    add_column :stocks, :d_margin_buying, :string
    add_column :stocks, :d_margin_selling, :string
  end
end
