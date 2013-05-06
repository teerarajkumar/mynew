lass CreateCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|

      t.timestamps
    end
  end
end
