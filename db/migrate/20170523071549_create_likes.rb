class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	t.boolean :rst

    	t.references :likeable, polymorphic: true, index: true

      t.timestamps 
    end
  end
end
