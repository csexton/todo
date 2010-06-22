require 'spec_helper'

describe "items/new.html.erb" do
  before(:each) do
    assign(:item, stub_model(Item,
      :new_record? => true,
      :subject => "MyString",
      :complete => false
    ))
  end

  it "renders new item form" do
    render

    rendered.should have_selector("form", :action => items_path, :method => "post") do |form|
      form.should have_selector("input#item_subject", :name => "item[subject]")
      form.should have_selector("input#item_complete", :name => "item[complete]")
    end
  end
end
