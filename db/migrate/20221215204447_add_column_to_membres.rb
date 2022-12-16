class AddColumnToMembres < ActiveRecord::Migration[7.0]
  def change
    add_column :membres, :type_membre, :string
  end
end
