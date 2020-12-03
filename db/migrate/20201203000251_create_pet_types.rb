class CreatePetTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_types do |t|
      t.string :bird
      t.string :cat
      t.string :dog
      t.string :small_animal
      t.belongs_to :shop, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
