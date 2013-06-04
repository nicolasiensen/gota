Given(/^there is (\d+) featured petitions$/) do |arg1|
  arg1.to_i.times { Petition.make! featured: true }
end

When(/^I am in "(.*?)"$/) do |arg1|
  visit route_to_path(arg1)
end

Then(/^I should see 3 featured petitions$/) do
  page.should have_css(".featured_petition", count: 3)
end

Given(/^there is (\d+) featured posts$/) do |arg1|
  arg1.to_i.times { Post.make! featured: true }
end

Then(/^I should see (\d+) featured posts$/) do |arg1|
  page.should have_css(".featured_post", count: arg1.to_i)
end

When(/^I click in see more posts$/) do
  click_link("more_posts")
end

Then(/^I should not see the 'see more posts' button anymore$/) do
  page.should_not have_css("#more_posts")
end
