class Listing < ActiveRecord::Base
  has_many :listings_users, dependent: :destroy
  has_many :users, through: :listings_users
  def self.search(search)
  	if search
  	  find(:all, :conditions  => ['category LIKE ?', "%#{search}%"])
  	else
  	  find(:all)
  	end
  end

   def creator_id=(creator)
    creator_id = creator
  end
end
