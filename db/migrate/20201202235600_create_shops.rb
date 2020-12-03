class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :location
      t.string :summary
      t.string :number
      t.string :website
      t.string :image

      t.timestamps
    end
  end
end
