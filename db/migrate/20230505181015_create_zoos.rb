class CreateZoos < ActiveRecord::Migration[7.0]
  def change
    create_table :zoos do |t|
      t.string :name
      t.integer :admission_cost
      t.integer :opening_time
      t.integer :closing_time

      t.timestamps
    end
  end
end
