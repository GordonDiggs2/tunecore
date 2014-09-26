class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title
      t.integer :album_id

      t.timestamps
    end
  end
end
