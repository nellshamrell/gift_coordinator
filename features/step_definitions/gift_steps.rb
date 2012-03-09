Given /^I am on the home page$/ do
  visit root_path
end

When /^I click the "([^"]*)" link$/ do |link|
  click_link link
end

When /^I click the "([^"]*)" button$/ do |button|
  click_button('Create Gift')
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, input|
  fill_in(field, :with => input)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

