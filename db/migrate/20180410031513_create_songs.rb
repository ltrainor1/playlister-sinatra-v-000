class CreateSongs < ActiveRecord::Migration[5.1]
  def up
    create_table :songs do |t|
      t.string :name
      t.string :artist
  end

  def down
    drop_table :songs
  end

end
