Given(/^I am on the landing page$/) do
  visit 'https://member.whoami-integration.integration.teladoc.io/signin'
end

When(/^I click the 'Get Started' button$/) do
  find(:xpath, "//a[contains(text(),'Get Started')]").click
end

Then(/^I see the 'Get Started' page$/) do
  expect(page).to have_content "Finish creating your account"
end

And(/^I fill in registration form$/) do
  find(:xpath, "//input[@id='first_name']").set 'open1234'
  find(:xpath, "//input[@id='last_name']").set 'open1234'
  find(:xpath, "//input[@id='dob']").click.set '02/23/1977'
  find(:xpath, "//select[@id='country_cd']").select 'Canada'
  find(:xpath, "//input[@id='postal']").set 'H1a 5G1'
  find(:xpath, "//input[@id='email_address']").set 'open1234@mail.com'
  find(:xpath, "//select[@id='language']").select 'Arabic'
  find(:xpath, "//select[@id='gender']").select 'Other'
  find(:xpath, "//body/div[@id='page_wrapper']/div[@id='main_content']/div[@id='main']/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[7]/div[1]/div[1]/div[1]/label[1]").click
  find(:xpath, "//input[@id='promo_code']").set 'td_trial'
end

And(/^I click the 'Continue' register button$/) do
  find(:xpath, "//span[contains(text(),'Continue')]").click
end