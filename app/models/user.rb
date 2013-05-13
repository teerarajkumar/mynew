class User < ActiveRecord::Base
  has_many :posts
  has_many :albums
  has_many :medias, :through => :albums

  attr_accessible :name
  
end
