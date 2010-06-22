Given /^I have no items$/ do
  Item.delete_all
end

Then /^I should have ([0-9]+) items?$/ do |count|
  Item.count.should == count.to_i
end

