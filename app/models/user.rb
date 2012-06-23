class User < ActiveRecord::Base
  attr_accessible :age, :description, :email, :password_digest, :user_name
end
