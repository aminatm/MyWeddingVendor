class User < ActiveRecord::Base
  has_many :listings, dependent: :destroy
  validates :name, presence: true, length: { minimum: 2}	
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true


  def password
    @password ||= BCrypt::Password.new(password_hash) if password_hash
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end
