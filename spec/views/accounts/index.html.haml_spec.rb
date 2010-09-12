require 'spec_helper'

describe "accounts/index.html.haml" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :name => "Name",
        :initial_balance => 1.5,
        :description => "Description",
        :account_type => 1
      ),
      stub_model(Account,
        :name => "Name",
        :initial_balance => 1.5,
        :description => "Description",
        :account_type => 1
      )
    ])
  end

  it "renders a list of accounts" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.5.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Description".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
