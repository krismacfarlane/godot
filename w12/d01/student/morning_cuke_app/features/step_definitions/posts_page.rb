Given(/^there's a post titled "(.*?)"$/) do |title|
  @post = Post.create(title: title)
end

When(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click on "(.*?)"$/) do |link|
  click_on link
end

Then(/^I should see the "(.*?)" post$/) do |post_title|
  expect(page).to have_content(post_title)
end
