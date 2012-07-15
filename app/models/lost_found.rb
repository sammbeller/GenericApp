class LostFound < ActiveRecord::Base
  attr_accessible :approved, :descr, :title, :user_id


  validates :user_id, presence: true

  
end
