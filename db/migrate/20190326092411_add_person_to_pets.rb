class AddPersonToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :found_by, :string
  end
end
