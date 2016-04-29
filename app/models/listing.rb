class Listing < ActiveRecord::Base
  belongs_to :user

  def self.search(search)
    if search
      find(:all, conditions: ['category LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
