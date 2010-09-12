class RemoveCodeToAccountType < ActiveRecord::Migration
  def self.up
    remove_column(:account_types, :code)
  end

  def self.down
  end
end
