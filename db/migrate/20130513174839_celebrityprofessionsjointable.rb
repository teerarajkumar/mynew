class Celebrityprofessionsjointable < ActiveRecord::Migration
  def up
  	create_table :celebrities_professions, :id => false do |t|
      t.references :celebrity
      t.references :profession
    end
  end

  def down
  	drop_table :celebrities_professions
  end
end
