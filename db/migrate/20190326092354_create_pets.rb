class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :address
      t.string :name
      t.string :healthiness
      t.datetime :found_on
      t.string :species

      t.timestamps
    end
  end
end
