class CreateRecensements < ActiveRecord::Migration[7.0]
  def change
    create_table :recensements do |t|
      t.string :nom
      t.date :date_debut
      t.date :date_fin
      t.string :etat

      t.timestamps
    end
  end
end
