Given(/^I am not logged in visitor$/) do
  visit 'https://member.whoami-integration.integration.teladoc.io/registrations/get_started'
end

When(/^I click sign_in link$/) do
  # click_link 'sign in'
  find(:xpath, "//a[contains(text(),'sign in')]").click
end

Then(/^I see the log in form is opened$/) do
  expect(current_url).to include '/signin'
  expect(page).to have_content 'Username'
  expect(page).to have_content 'PASSWORD'
end

When(/^I fill in log in form with valid credentials$/) do
  #find(:xpath, '//input[@id="login_username"]').set 'hybrid9'
  #find(:xpath, '//input[@id="login_password"]').set '1qaz2wsx3edc'
  find('#login_username').set 'hybrid9'
  find('#login_password').set '1qaz2wsx3edc'
  #sleep 5
end

When(/^I click login button$/) do
  #find(:xpath, "//body/div[@id='page_wrapper']/main[@id='main']/div[1]/section[1]/div[1]/div[1]/form[1]/ul[1]/li[2]/input[1]").click
  find(:xpath, '//body/div[@id="page_wrapper"]/main[@id="main"]/div[1]/section[1]/div[1]/div[1]/form[1]/ul[1]/li[2]/input[1]').click
  #sleep 5
end

Then(/^I logged as a user$/) do
  expect(page).to have_content 'My Account'
end