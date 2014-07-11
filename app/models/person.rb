class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 13 }
end
