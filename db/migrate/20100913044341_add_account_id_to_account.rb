class AddAccountIdToAccount < ActiveRecord::Migration
  def self.up
    add_column :accounts, :account_id, :integer
  end

  def self.down
    remove_column :accounts, :account_id
  end
end
