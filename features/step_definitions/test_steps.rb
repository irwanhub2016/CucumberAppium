Given(/^is on the main screen$/) do
  @screen.test_screen.main_screen?
end

When(/^user skip the main screen$/) do
  @screen.test_screen.tap_skip_main_screen
end

When(/^user access the login page$/) do
  @screen.test_screen.long_wait_for { element_exists('id', @screen.test_screen.slide) }
  @screen.test_screen.tap_tab_login
  @screen.test_screen.login_loaded?
  @screen.test_screen.tap_login_with_email
end

When(/^user login with valid email dan password$/) do
  @screen.test_screen.fill_email 'testsehatq@mailinator.com'
  @screen.test_screen.fill_password '123456'
  @screen.test_screen.tap_button_login
end

When(/^user register a new account$/) do
  @screen.test_screen.tap_access_register
  @screen.test_screen.short_wait_for { element_exists('id', @screen.test_screen.button_register) }
  @screen.test_screen.fill_new_full_name Faker::Name.unique.name
  @screen.test_screen.fill_new_email Faker::Internet.email
  @screen.test_screen.fill_new_password 'sehatq123'
  @screen.back
  @screen.test_screen.tap_check_box
  @screen.test_screen.submit_register
end

Then(/^user verify login success$/) do
  @screen.test_screen.short_wait_for { element_exists('xpath', @screen.test_screen.tab_profile) }
end

Then(/^user verify register success$/) do
  @screen.test_screen.short_wait_for { element_exists('id', @screen.test_screen.button_skip) }
  @screen.test_screen.tap_skip
  @screen.test_screen.short_wait_for { element_exists('xpath', @screen.test_screen.tab_profile) }
end
