class Account < ActiveRecord::Base
  belongs_to :account_type
  has_many :transactions
  
  def balance
    initial_balance + (total_deposits - total_withdrawals)
  end
  
  def total_withdrawals
    transactions.where(:type => Transaction::WITHDRAWAL_TYPE).sum(:amount)
  end

  def total_deposits
    transactions.where(:type => Transaction::DEPOSIT_TYPE).sum(:amount)
  end
end
