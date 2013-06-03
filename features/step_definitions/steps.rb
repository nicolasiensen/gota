Given(/^there is (\d+) featured petitions$/) do |arg1|
  arg1.to_i.times { Petition.make! featured: true }
end

When(/^I am in "(.*?)"$/) do |arg1|
  visit route_to_path(arg1)
end

Then(/^I should see 3 featured petitions$/) do
  page.should have_css(".featured_petition", count: 3)
end
