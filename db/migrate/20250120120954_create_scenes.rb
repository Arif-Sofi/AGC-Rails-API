class CreateScenes < ActiveRecord::Migration[8.0]
  def change
    create_table :scenes do |t|
      t.references :character, null: false, foreign_key: true
      t.references :emotion, null: false, foreign_key: true
      t.references :anime, null: false, foreign_key: true

      t.timestamps
    end
  end
end