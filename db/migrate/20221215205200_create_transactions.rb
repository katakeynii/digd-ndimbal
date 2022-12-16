class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.decimal :montant_donne
      t.string :numero_operation
      t.string :type_transaction
      t.datetime :date_transaction

      t.timestamps
    end
  end
end
