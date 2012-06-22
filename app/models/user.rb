class User < ActiveRecord::Base
  attr_accessible :age, :description, :email, :password, :user_name
end
