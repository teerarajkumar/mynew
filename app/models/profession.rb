class Profession < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  
  attr_accessible :title
end
