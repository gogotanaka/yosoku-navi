class Blog < ActiveRecord::Base
  attr_accessible :describe, :image, :in, :month_in, :out, :title, :url, :week_in
end
