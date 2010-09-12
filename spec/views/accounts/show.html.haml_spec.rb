require 'spec_helper'

describe "accounts/show.html.haml" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :name => "Name",
      :initial_balance => 1.5,
      :description => "Description",
      :account_type => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain(1.5.to_s)
    rendered.should contain("Description".to_s)
    rendered.should contain(1.to_s)
  end
end
