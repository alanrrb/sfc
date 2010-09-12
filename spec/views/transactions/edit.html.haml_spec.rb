require 'spec_helper'

describe "transactions/edit.html.haml" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :new_record? => false,
      :amount => "9.99",
      :transaction_type => 1,
      :description => "MyString",
      :type => "MyString"
    ))
  end

  it "renders the edit transaction form" do
    render

    rendered.should have_selector("form", :action => transaction_path(@transaction), :method => "post") do |form|
      form.should have_selector("input#transaction_amount", :name => "transaction[amount]")
      form.should have_selector("input#transaction_transaction_type", :name => "transaction[transaction_type]")
      form.should have_selector("input#transaction_description", :name => "transaction[description]")
      form.should have_selector("input#transaction_type", :name => "transaction[type]")
    end
  end
end
