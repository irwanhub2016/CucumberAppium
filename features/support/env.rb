require 'appium_lib'
require 'appium_lib/driver'
require 'cucumber/ast'
require 'rspec/expectations'
require 'pry'
require 'selenium-webdriver'

class AppiumWorld
end

caps = Appium.load_appium_txt file: File.expand_path('../screen_objects/android/config/appium.txt', __dir__)

World do
  AppiumWorld.new
end

Before do
  @screen ||= TestBaseScreen.new(caps)
  @screen.start_driver
  Appium.promote_appium_methods AppiumWorld
end

After do
  @screen.driver_quit
end