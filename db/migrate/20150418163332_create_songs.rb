class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :composer
      t.time :time
      t.references :album, index: true

      t.timestamps null: false
    end
    add_foreign_key :songs, :albums
  end
end
