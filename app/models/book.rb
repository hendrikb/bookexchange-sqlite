class Book < ActiveRecord::Base
  attr_accessible :author, :description, :isbn, :title, :condition, :price
  belongs_to :user

  validates :title, presence: true
  validates :author, presence: true

#  validates_numericality_of :price, greater_than: 0.01, allow_nil: true
   validates_length_of :isbn, is: 10, only_integer: true, message: "is a 10 digit number!", allow_nil: true

  validates_numericality_of :condition, greater_than_or_equal_to: -3, only_integer: true, message: "Condition is a number between -3 (really bad) and 3 (really good)", allow_nil: true
  validates_numericality_of :condition, less_than_or_equal_to: 3, only_integer: true, message: "Condition is a number between -3 (really bad) and 3 (really good)", allow_nil: true

  def self.map_condition(condition = nil)
    case condition
      when nil
        "unknown"
      when -3
        "very poor"
      when -2
        "poor"
      when -1
        "somewhat not okay"
      when 0
        "okay"
      when 1
        "pretty good"
      when 2
        "very good"
      when 3
        "like new"
      else
        "unknown"
    end
  end  
end
