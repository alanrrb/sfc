class ModifyAccountIdToAccount < ActiveRecord::Migration
  def self.up
    remove_column :accounts, :account_id
    add_column :accounts, :account_type_id, :integer
  end

  def self.down
    remove_column :accounts, :account_type_id
  end
end
