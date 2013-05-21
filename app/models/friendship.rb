class Friendship < ActiveRecord::Base
   attr_accessible :from_fan_id,:to_fan_id,:status

   STATUS = {
    :accepted => "accepted",
    :cancelled => "cancelled",
    :rejected => "rejected",
    :pending => "pending"
  }

  
end
