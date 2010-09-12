require 'spec_helper'

describe "account_types/new.html.haml" do
  before(:each) do
    assign(:account_type, stub_model(AccountType,
      :new_record? => true,
      :name => "MyString",
      :code => 1
    ))
  end

  it "renders new account_type form" do
    render

    rendered.should have_selector("form", :action => account_types_path, :method => "post") do |form|
      form.should have_selector("input#account_type_name", :name => "account_type[name]")
      form.should have_selector("input#account_type_code", :name => "account_type[code]")
    end
  end
end
