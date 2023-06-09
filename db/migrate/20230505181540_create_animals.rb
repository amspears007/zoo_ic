class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.string :habitat
      t.references :zoo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
