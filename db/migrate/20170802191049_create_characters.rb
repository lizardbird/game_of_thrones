class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :house
      t.string :img_url
      t.boolean :is_alive
      t.timestamps
    end
  end
end
