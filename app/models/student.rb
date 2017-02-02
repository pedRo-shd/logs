class Student < ActiveRecord::Base
  attr_accessible :age, :email, :name
  has_paper_trail
end
