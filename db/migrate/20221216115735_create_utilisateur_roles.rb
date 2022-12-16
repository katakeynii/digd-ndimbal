class CreateUtilisateurRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :utilisateur_roles do |t|
      t.references :utilisateur, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.datetime :expire_at

      t.timestamps
    end
  end
end
