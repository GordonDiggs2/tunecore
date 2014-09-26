class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :name

      t.timestamps
    end

    add_index :artists, :name
  end
end
