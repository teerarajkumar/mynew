class Celebrity < User
  # attr_accessible :title, :body
  has_many :professions
  
  attr_accessible :name
end
