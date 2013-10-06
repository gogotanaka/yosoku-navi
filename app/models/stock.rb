class Stock < ActiveRecord::Base
  attr_accessible :chart, :code, :high, :low, :market, :name, :opening, :previousprice, :price, :volume
end
