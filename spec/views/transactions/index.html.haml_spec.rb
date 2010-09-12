require 'spec_helper'

describe "transactions/index.html.haml" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :amount => "9.99",
        :transaction_type => 1,
        :description => "Description",
        :type => "Type"
      ),
      stub_model(Transaction,
        :amount => "9.99",
        :transaction_type => 1,
        :description => "Description",
        :type => "Type"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    rendered.should have_selector("tr>td", :content => "9.99".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Description".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Type".to_s, :count => 2)
  end
end
