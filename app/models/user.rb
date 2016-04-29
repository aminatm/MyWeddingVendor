class User < ActiveRecord::Base
  has_many :listings_users, dependent: :destroy
  has_many :listings, through: :listings_users
  validates :name, presence: true, length: { minimum: 2}	
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  serialize :favorites, Array



  def password
    @password ||= BCrypt::Password.new(password_hash) if password_hash
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def is_vendor?
    is_vendor
  end

  def is_vendor=(value)
    is_vendor = true
  end
end
