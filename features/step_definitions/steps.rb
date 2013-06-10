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

Given(/^there is (\d+) featured users$/) do |arg1|
  arg1.to_i.times { User.make! featured: true }
end

Then(/^I should see (\d+) featured users$/) do |arg1|
  page.should have_css(".featured_user", count: arg1.to_i)
end

Given(/^I have an account$/) do
  @password = "mysecretpass"
  @user = User.make! password: @password
end

When(/^I click on the login button$/) do
  click_link "sign_in"
end

Then(/^I should see the login form$/) do
  page.should have_css("form.new_user")
end

Given(/^I fill the login form correctly$/) do
  fill_in "user_email", with: @user.email
  fill_in "user_password", with: @password
end

When(/^I submit the login form$/) do
  within("form.new_user") do
    find("input[type='submit']").click
  end
end

Then(/^I should be in "(.*?)"$/) do |arg1|
  current_path.should == route_to_path(arg1)
end

Then(/^I should not see the login button$/) do
  page.should_not have_css("a#sign_in")
end

Then(/^I should see my profile picture$/) do
  page.should have_css(".user img")
end

Given(/^I fill the login form incorrectly$/) do
  fill_in "user_email", with: "test@umagotanooceano.org"
  fill_in "user_password", with: "wrongpass"
end

Then(/^I should see the login error message$/) do
  page.should have_selector('form.new_user .alert', visible: true)
end
