class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
    t.string :name
    t.references :anime, null: false, foreign_key: true

      t.timestamps
    end
  end
end
