class AddFoundStatusToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :found, :boolean, default: false
  end
end
