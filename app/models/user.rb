class User < ActiveRecord::Base
	has_many :albums
	#has_many :medias

  def medias
  	Media.where(:user_id => :id)
  end

  has_many :posts
  
  attr_accessible :name
end
