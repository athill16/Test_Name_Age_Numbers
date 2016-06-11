Given (/^I am on "([^"]*)"$/) do |path|
	visit path
end

Then (/^I should see "([^"]*)"$/) do |text|
	page.body.should match(text)
end

When (/^I fill in "([^"]*)" with "([^"]*)"$/) do |input, value|
	fill_in input, with: value
end

When (/^I click "([^"]*)"$/) do |submit|
	click_on submit
end

Given (/^I am on "([^"]*)" with query "([^"]*)"$/) do |path, query|
	visit path + query
end



