class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :posts
  
  attr_accessible :name
end
