class Following < ActiveRecord::Base
  set_table_name("followings")
  attr_accessible :fan_id, :celebrity_id
end
