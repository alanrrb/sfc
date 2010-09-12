require 'spec_helper'

describe "account_types/index.html.haml" do
  before(:each) do
    assign(:account_types, [
      stub_model(AccountType,
        :name => "Name",
        :code => 1
      ),
      stub_model(AccountType,
        :name => "Name",
        :code => 1
      )
    ])
  end

  it "renders a list of account_types" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
