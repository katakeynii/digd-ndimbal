class CreateDetailRecensements < ActiveRecord::Migration[7.0]
  def change
    create_table :detail_recensements do |t|
      t.references :recensement, null: false, foreign_key: true
      t.references :famille, null: false, foreign_key: true
      t.references :agent, null: false, foreign_key: true
      t.datetime :date_recensement
      t.text :observation

      t.timestamps
    end
  end
end
