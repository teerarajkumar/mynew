class Celebrity < User
  # attr_accessible :title, :body
  has_and_belongs_to_many :professions
  
  attr_accessible :name
end
