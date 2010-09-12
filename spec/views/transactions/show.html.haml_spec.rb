require 'spec_helper'

describe "transactions/show.html.haml" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :amount => "9.99",
      :transaction_type => 1,
      :description => "Description",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("9.99".to_s)
    rendered.should contain(1.to_s)
    rendered.should contain("Description".to_s)
    rendered.should contain("Type".to_s)
  end
end
