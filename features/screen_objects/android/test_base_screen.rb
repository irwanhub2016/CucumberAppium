require 'appium_lib'
require 'appium_lib/driver'
require 'minitest/assertions'
require 'minitest/autorun'

# Base class for all screen objects
class TestBaseScreen < Appium::Driver

  def initialize(*opts)
    super
  end

  def query(type, element)
    $driver.find_element(:"#{type}", element.to_s)
  end

  def queries(type, element)
    $driver.find_elements(:"#{type}", element.to_s)
  end

  def tap_on(type, element)
    query(type, element).click
  end

  def element_exists(type, element)
    elem = query(type, element)
    elem.displayed?
  end

  def fill_on(type, element, arg)
    query(type, element).send_keys arg
  end

  def test_screen
    @test_screen ||= TestScreen.new
  end
end
