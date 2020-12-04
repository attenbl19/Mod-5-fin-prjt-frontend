class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.belongs_to :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
