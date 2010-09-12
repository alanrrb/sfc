class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :name
      t.float :initial_balance
      t.string :description
      t.integer :account_type

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
