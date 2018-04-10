class CreateGenres < ActiveRecord::Migration[5.1]
  def up 
    create_table :genres do |t| 
      t.string :name 
  end

  def down 
    drop_table :genres 
  end 
  
end
