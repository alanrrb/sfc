require 'spec_helper'

describe "account_types/show.html.haml" do
  before(:each) do
    @account_type = assign(:account_type, stub_model(AccountType,
      :name => "Name",
      :code => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain(1.to_s)
  end
end
