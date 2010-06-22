require 'spec_helper'

describe "items/edit.html.erb" do
  before(:each) do
    assign(:item, @item = stub_model(Item,
      :new_record? => false,
      :subject => "MyString",
      :complete => false
    ))
  end

  it "renders the edit item form" do
    render

    rendered.should have_selector("form", :action => item_path(@item), :method => "post") do |form|
      form.should have_selector("input#item_subject", :name => "item[subject]")
      form.should have_selector("input#item_complete", :name => "item[complete]")
    end
  end
end
