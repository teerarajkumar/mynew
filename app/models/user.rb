class User < ActiveRecord::Base
	has_many :albums
	#has_many :medias

  	# attr_accessible :title, :body
  	def medias
  		Media.where(:user_id => :id)
  	end
  # attr_accessible :title, :body
  has_many :posts
  
  attr_accessible :name
end
