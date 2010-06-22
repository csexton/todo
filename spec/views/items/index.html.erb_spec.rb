require 'spec_helper'

describe "items/index.html.erb" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :subject => "MyString",
        :complete => false
      ),
      stub_model(Item,
        :subject => "MyString",
        :complete => false
      )
    ])
  end

  it "renders a list of items" do
    render
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => false.to_s, :count => 2)
  end
end
