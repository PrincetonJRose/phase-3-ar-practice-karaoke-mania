class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string      :title
      t.integer     :runtime_in_minutes
      t.string      :artist_name

      t.timestamps
    end
  end
end
