class CreateSubventions < ActiveRecord::Migration[7.0]
  def change
    create_table :subventions do |t|
      t.decimal :montant
      t.references :mairie, null: false, foreign_key: true
      t.references :famille, null: false, foreign_key: true

      t.timestamps
    end
  end
end
