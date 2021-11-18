class CreateComicCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :comic_characters do |t|
      t.string :publisher
      t.string :real_name
      t.string :alias
      t.string :url
      t.integer :appearances
      t.boolean :alive
      t.string :gender
      t.string :identity_type
      t.string :alignment
      t.date :intro_in, limit: 4

      t.timestamps
    end
  end
end
