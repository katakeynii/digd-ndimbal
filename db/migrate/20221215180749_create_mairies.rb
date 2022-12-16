class CreateMairies < ActiveRecord::Migration[7.0]
  def change
    create_table :mairies do |t|
      t.string :nom
      t.string :adresse

      t.timestamps
    end
  end
end
