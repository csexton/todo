require 'spec_helper'

describe "items/show.html.erb" do
  before(:each) do
    assign(:item, @item = stub_model(Item,
      :subject => "MyString",
      :complete => false
    ))
  end

  it "renders attributes in <p>" do
    render
   rendered.should contain("MyString")
   rendered.should contain(false)
  end
end
