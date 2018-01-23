class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :invoice, foreign_key: true
      t.integer :credit_card_number
      t.string :credit_card_expiration_date
      t.integer :result

      t.timestamps
    end
  end
end