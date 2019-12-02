Given(/^is on the main screen$/) do
  @screen.test_screen.main_screen?
end

When(/^user skip the main screen$/) do
  @screen.test_screen.tap_skip_main_screen
end

When(/^user access the login page$/) do
  @screen.test_screen.tap_tab_login
end

When(/^user login with valid email dan password$/) do
  @screen.test_screen.tap_login_with_email
  @screen.test_screen.fill_email 'testsehatq@mailinator.com'
  @screen.test_screen.fill_password '123456'
  @screen.test_screen.tap_button_login
end

When(/^he taps the Add Contact button$/) do
  @screen.test_screen.tap_add_contact
end

Then(/^he should see the Add Contact screen$/) do
  @screen.test_screen.screen_loaded?
end