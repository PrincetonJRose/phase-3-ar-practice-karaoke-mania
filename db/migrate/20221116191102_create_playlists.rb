class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.belongs_to  :song
      t.belongs_to  :karaoke_singer

      t.timestamps
    end
  end
end
