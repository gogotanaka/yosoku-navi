class Consultant < ActiveRecord::Base
  attr_accessible :category, :contents, :info, :kinsyo, :person, :phone, :place, :rate, :regist, :site_name, :title, :url
end
