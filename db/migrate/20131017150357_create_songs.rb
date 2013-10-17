class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.string :spotify_uri, null: false
      t.references :artist, null: false, index: true
      t.decimal :price, null: false, default: 0.99

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE songs
          ADD CONSTRAINT fk_songs_artists
          FOREIGN KEY (artist_id)
          REFERENCES artists(id)
        SQL
      end
    end
  end
end
