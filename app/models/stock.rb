class Stock < ActiveRecord::Base
  attr_accessible :chart, :code, :high, :low, :market, :name, :opening, :previousprice, :price, :volume, :previousvolume, :industry, :margin_buying, :margin_selling, :d_margin_buying, :d_margin_selling
  has_many :comments
end
