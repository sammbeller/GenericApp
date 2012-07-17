class LostFound < ActiveRecord::Base
  attr_accessible :descr, :title


  validates :user_id, presence: true
  validates :descr, presence: true
  validates :title, presence: true
  validates :approved, presence: true

end
