class Person < ActiveRecord::Base
  validates :title, :last_name, presence: true
  validates :first_name, :last_name, presence: true
  has_many :assignments
  has_many :locations, through: :assignments
end
