class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.decimal :amount
      t.date :date
      t.integer :transaction_type
      t.string :description
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
