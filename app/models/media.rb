class Media < ActiveRecord::Base
	set_table_name("medias")
	belongs_to :album
	belongs_to :user
	
	# attr_accessible :title, :body
	attr_accessible :caption, :location, :type

    def user
        album.user
    end

end
