class Fan < User
  # attr_accessible :title, :body
  attr_accessible :name

  def followings
    Following.find_all_by_fan_id(self)
  end

  def friends
    you_are_friends_with = Friendship.where(:status => Friendship::STATUS[:accepted]).find_all_by_from_fan_id(self)

    friends_ids = []
    you_are_friends_with.each do |x|
      friends_ids << x.to_fan_id
    end
    ppl_friends_with_you = Friendship.where(:status => Friendship::STATUS[:accepted]).find_all_by_to_fan_id(self)
    ppl_friends_with_you.each do |x|
      friends_ids << x.from_fan_id
    end
    friends_ids
  end

  def send_request(to_fan_id)
    already_friends = Friendship.where("from_fan_id = "+self.id.to_s+" and to_fan_id = "+to_fan_id.to_s+" or
      from_fan_id = "+to_fan_id.to_s+" and to_fan_id = "+self.id.to_s )
    if ( already_friends.empty? )
      f = Friendship.new
      f.from_fan_id = self.id
      f.to_fan_id = to_fan_id
      f.save
    else
      false
    end
  end

  def friend_requests
    Friendship.where(:status => Friendship::STATUS[:pending]).find_all_by_to_fan_id(self.id)
  end

  def accept_request(friendship_id)
    friendship = Friendship.find_by_id(friendship_id)
    if friendship.exists?
      friendship.status = Friendship::STATUS[:accepted]
      friendship.save
    end
  end
  
end
