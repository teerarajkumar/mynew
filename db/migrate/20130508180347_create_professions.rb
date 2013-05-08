class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.integer :celebrity_id
      t.string :title	
      t.timestamps
    end
  end
end
