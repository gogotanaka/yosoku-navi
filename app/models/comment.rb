class Comment < ActiveRecord::Base
  attr_accessible :board_id, :contents, :sender, :consultant_id, :stock_id
  belongs_to :board,  touch: true
  belongs_to :consultant
end
