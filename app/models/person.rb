class Person < ActiveRecord::Base
  validates (:title and :last_name) || (:first_name and :last_name), presence: true
end
