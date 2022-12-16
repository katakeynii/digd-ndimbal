class CreateFamilles < ActiveRecord::Migration[7.0]
  def change
    create_table :familles do |t|
      t.string :nom
      t.string :adresse
      t.references :commune, null: false, foreign_key: true

      t.timestamps
    end
  end
end
