class CreateMembres < ActiveRecord::Migration[7.0]
  def change
    create_table :membres do |t|
      t.references :famille, null: false, foreign_key: true
      t.string :prenom
      t.string :nom
      t.string :sexe
      t.date :date_naissance
      t.string :lieu_naissance

      t.timestamps
    end
  end
end
