require 'spec_helper'

describe "accounts/new.html.haml" do
  before(:each) do
    assign(:account, stub_model(Account,
      :new_record? => true,
      :name => "MyString",
      :initial_balance => 1.5,
      :description => "MyString",
      :account_type => 1
    ))
  end

  it "renders new account form" do
    render

    rendered.should have_selector("form", :action => accounts_path, :method => "post") do |form|
      form.should have_selector("input#account_name", :name => "account[name]")
      form.should have_selector("input#account_initial_balance", :name => "account[initial_balance]")
      form.should have_selector("input#account_description", :name => "account[description]")
      form.should have_selector("input#account_account_type", :name => "account[account_type]")
    end
  end
end
