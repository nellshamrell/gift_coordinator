Given /^I am on the home page$/ do
  visit root_path
end

When /^I click the "([^"]*)" link$/ do |link|
  click_link link
end

When /^I click the "([^"]*)" button$/ do |button|
  click_button(button)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, input|
  fill_in(field, :with => input)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Given /^there is a Gift$/ do
  Factory(:gift)
end

Then /^I should be on the gift page for "([^"]*)"$/ do |name|
  Gift.count.should == 1
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == gift_path(Gift.first)
  else
    assert_equal path gift_path(Gift.first), current_path
  end
end

When /^I visit the page for the Gift$/ do
  Gift.count.should == 1
  visit(gift_path(Gift.first))
end

