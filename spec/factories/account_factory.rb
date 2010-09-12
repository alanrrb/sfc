# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :account do |f|
  f.name "MyString"
  f.initial_balance 1.5
  f.description "MyString"
  f.account_type 1
end
