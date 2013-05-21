class Fan < User
  # attr_accessible :title, :body
  attr_accessible :name

  def followings
    Followings.find_all_by_fan_id(self)
  end

  def friends
  #   you_are_friends_with = Friendship.find_all_by_from_fan_id(self)
  #   ppl_friends_with_you = Friendship.find_all_by_to_fan_id(self)
  #   you_are_friends_with + ppl_friends_with_you

  # above code looks cool, but fires two queries while below code is optimal but ugly!

    Friendship.where("from_fan_id = "+self.id.to_s+" or to_fan_id = "+self.id.to_s).all
    
  end

end
