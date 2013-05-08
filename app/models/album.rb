class Album < ActiveRecord::Base
	belongs_to :user
  	has_many :medias#, :class_name => "Media", :foreign_key => "medias_id"

  	# attr_accessible :title, :body
  	attr_accessible :caption

end
