class Account < ActiveRecord::Base
  belongs_to :account_type
  has_many :transactions
  
  def balance
    withdrawals = transactions.withdrawals
    deposits = transactions.deposits
    initial_balance + (deposits - withdrawals)
  end
end
