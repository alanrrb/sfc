class RemoveAccountTypeToAccount < ActiveRecord::Migration
  def self.up
    remove_column :accounts, :account_type
  end

  def self.down
  end
end
