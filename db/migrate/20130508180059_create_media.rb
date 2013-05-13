class CreateMedia < ActiveRecord::Migration
  def change
    create_table :medias do |t|
    	t.references :album
    	t.string :location
    	t.string :caption
    	t.string :file_type
    	t.timestamps
    end
  end
end
