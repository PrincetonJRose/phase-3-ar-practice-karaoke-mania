class CreateKaraokeSingers < ActiveRecord::Migration[7.0]
  def change
    create_table :karaoke_singers do |t|
      t.string      :name
      t.integer     :number_of_drinks, default: 0

      t.timestamps
    end
  end
end
