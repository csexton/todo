def echo(s)
  puts s
end

Given /^I have no items$/ do
  echo "I am deleting stuff now"
  Item.delete_all
end

Then /^I should have ([0-9]+) items?$/ do |count|
  Item.count.should == count.to_i
end

Given /^I have items (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Item.create!(:title => title)
  end
end


