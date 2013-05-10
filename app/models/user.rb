class User < ActiveRecord::Base
  has_many :posts
  has_many :albums
	#has_many :medias

  attr_accessible :name

  def medias
  	Media.where(:user_id => :id)
  end
end
