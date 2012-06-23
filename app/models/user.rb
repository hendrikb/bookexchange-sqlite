class User < ActiveRecord::Base
  attr_accessible :age, :description, :email, :password_digest, :user_name, :password, :password_confirmation
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true

  validates_exclusion_of :user_name, :in => %w( admin superuser root hitler sex)
  validates_inclusion_of :age, :in => 0..100, :message => "is invalid"

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => :create
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => :update

  validates_length_of :user_name, :maximum => 30, :message => "30 characters maximum."
#  validates_length_of :password, :minimum => 5, :message => "must be at least 5 characters long"


  has_secure_password
  has_many :books
end
