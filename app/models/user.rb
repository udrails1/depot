class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, uniqueness: true

  # from line 458  
  def index
    @users = User.order(:name)
  end
end
