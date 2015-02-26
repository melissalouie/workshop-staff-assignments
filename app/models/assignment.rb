class Assignment < ActiveRecord::Base
  validates :location, :role, uniqueness: true
  belongs_to :person
  belongs_to :location
end
