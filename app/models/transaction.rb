class Transaction < ActiveRecord::Base
  WITHDRAWAL_TYPE = 'withdrawal'
  DEPOSIT_TYPE = 'deposit'

  scope :withdrawals, where(:type => WITHDRAWAL_TYPE)
  scope :deposits, where(:type => DEPOSIT_TYPE)
end
