# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :transaction do |f|
  f.amount "9.99"
  f.date "2010-09-12"
  f.transaction_type 1
  f.description "MyString"
  f.type "MyString"
end
