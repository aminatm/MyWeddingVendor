class Listing < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, length: { minimum: 2 }
 

  def self.search(search)
    if search
      find(:all, conditions: ['category LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
