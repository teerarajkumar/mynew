class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|
      t.references :fan
      t.references :celebrity
      t.timestamps
    end
  end
end
