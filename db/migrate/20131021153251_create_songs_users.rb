class CreateSongsUsers < ActiveRecord::Migration
  def change
    create_table :songs_users do |t|
      t.belongs_to :user, null: false
      t.belongs_to :song, null: false
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE songs_users
          ADD CONSTRAINT fk_users
          FOREIGN KEY (user_id)
          REFERENCES users(id),
          ADD CONSTRAINT fk_songs
          FOREIGN KEY (song_id)
          REFERENCES songs(id)
        SQL
      end
    end
  end
end
