class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
  		t.string :dish_name, null: false 
  		t.string :instructions, null: false 
  		
      t.timestamps
    end
  end
end
