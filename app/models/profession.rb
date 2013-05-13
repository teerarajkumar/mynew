class Profession < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :celebrities

  attr_accessible :title
end
