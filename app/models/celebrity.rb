class Celebrity < User
  # attr_accessible :title, :body
  has_and_belongs_to_many :professions
  
  attr_accessible :name

  def followers
    Followings.find_all_by_celebrity_id(self)
  end

end
