class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :from_fan_id  
      t.integer :to_fan_id
      t.column :status, "ENUM('accepted', 'cancelled', 'rejected', 'pending') DEFAULT 'pending'"
      t.timestamps
    end
  end
end
