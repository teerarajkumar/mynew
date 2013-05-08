class Profession < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :celebrity

  attr_accessible :title
end
