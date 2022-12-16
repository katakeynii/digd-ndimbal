class AddColumnCodeToFamille < ActiveRecord::Migration[7.0]
  def change
    add_column :familles, :code, :string
    add_index :familles, :code, unique: true
  end
end
