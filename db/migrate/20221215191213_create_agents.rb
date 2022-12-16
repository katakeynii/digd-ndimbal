class CreateAgents < ActiveRecord::Migration[7.0]
  def change
    create_table :agents do |t|
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.references :mairie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
