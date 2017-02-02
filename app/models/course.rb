class Course < ActiveRecord::Base
  attr_accessible :kind, :name
  has_paper_trail
end
