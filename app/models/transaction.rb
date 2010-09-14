class Transaction < ActiveRecord::Base
  WITHDRAWAL_TYPE = 'withdrawal'
  DEPOSIT_TYPE = 'deposit'

  scope :withdrawals, where(:type => WITHDRAWAL_TYPE)
  scope :deposits, where(:type => DEPOSIT_TYPE)
  
  def total_deposits
    deposits.inject(0) do |o,c|
      o.amount+c.amount
    end
  end
  
  def total_withdrawals
    withdrawals.inject(0) do |o,c|
      o.amount+c.amount
    end
  end
end
