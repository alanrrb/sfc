require 'spec_helper'

describe "transactions/new.html.haml" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :new_record? => true,
      :amount => "9.99",
      :transaction_type => 1,
      :description => "MyString",
      :type => "MyString"
    ))
  end

  it "renders new transaction form" do
    render

    rendered.should have_selector("form", :action => transactions_path, :method => "post") do |form|
      form.should have_selector("input#transaction_amount", :name => "transaction[amount]")
      form.should have_selector("input#transaction_transaction_type", :name => "transaction[transaction_type]")
      form.should have_selector("input#transaction_description", :name => "transaction[description]")
      form.should have_selector("input#transaction_type", :name => "transaction[type]")
    end
  end
end
