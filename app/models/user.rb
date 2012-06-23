class User < ActiveRecord::Base
  attr_accessible :age, :description, :email, :password_digest, :user_name, :password, :password_confirmation
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true
  has_secure_password
  has_many :books
end
