Given(/^I am on the landing page$/) do
  visit 'https://member.whoami-integration.integration.teladoc.io/signin'
end

When(/^I click the 'Get Started' button$/) do
  find(:xpath, "//a[contains(text(),'Get Started')]").click
end

Then(/^I see the 'Get Started' page$/) do
  expect(page).to have_content "Welcome to 24/7 care"
end

And(/^I fill in registration form$/) do
  find(:xpath, "//input[@id='first_name']").set 'open1234'
  find(:xpath, "//input[@id='last_name']").set 'open1234'
  find(:xpath, "//input[@id='dob']").click.set '02/23/1977'
  #find(:xpath, "//select[@id='country_cd']").select 'United State of America'
  find(:xpath, "//input[@id='postal']").set '06901'
  find(:xpath, "//input[@id='email_address']").set 'open1234@mail.com'
  find(:xpath, "//select[@id='language']").select 'Arabic'
  find(:xpath, "//select[@id='gender']").select 'Other'
  find(:xpath, "//body/div[@id='page_wrapper']/div[@id='main_content']/div[@id='main']/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[7]/div[1]/div[1]/div[1]/label[1]").click
  find(:xpath, "//input[@id='promo_code']").set 'td_trial'
end

And(/^I click the 'Continue' register button$/) do
  find(:xpath, "//span[contains(text(),'Continue')]").click
end

And(/^I finish an open member creation$/) do
  find(:xpath, "//input[@id='resident_address_line1']").set '555, Open street'
  find('#resident_address_line2').set 'Apt 8512'
  find('#resident_city').set 'New Haven'
  #find('#resident_country_cd').select 'United State of America'
  find('#resident_state').select 'Connecticut'
  #find('#resident_zipcode').set '06901'
  find('#primary_phone_number').click.set '555-555-5555'
  find('#username').set 'open1234'
  find('#password').set '1qaz2wsx3edc'
  find('#password_confirmation').set '1qaz2wsx3edc'
  find('#security_question_id_1').select "Father's Middle Name"
  find('#security_question_response_1').set 'qqqqqqqqq'
  find('#security_question_id_2').select "Mother's Maiden Name"
  find('#security_question_response_2').set 'qqqqqqqqq'
  find('#security_question_id_3').select 'City You Were Born In'
  find('#security_question_response_3').set 'qqqqqqqqq'
  find('#billing_card_type').select 'Visa'
  find('#billing_card_number').set '4111111111111111'
  find('#billing_expiration_month').select '08'
  find('#billing_expiration_year').select '2028'
  find(:xpath, "//body/div[@id='page_wrapper']/div[@id='main_content']/div[@id='main']/div[1]/div[1]/div[1]/div[1]/form[1]/div[32]/div[1]/div[1]/label[1]").click
  sleep 10
  find('#submit').click
  sleep 5
end