class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :rating
      t.integer :year
      t.integer :condition
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
