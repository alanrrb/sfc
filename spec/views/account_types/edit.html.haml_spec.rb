require 'spec_helper'

describe "account_types/edit.html.haml" do
  before(:each) do
    @account_type = assign(:account_type, stub_model(AccountType,
      :new_record? => false,
      :name => "MyString",
      :code => 1
    ))
  end

  it "renders the edit account_type form" do
    render

    rendered.should have_selector("form", :action => account_type_path(@account_type), :method => "post") do |form|
      form.should have_selector("input#account_type_name", :name => "account_type[name]")
      form.should have_selector("input#account_type_code", :name => "account_type[code]")
    end
  end
end
