# Test screen class
class TestScreen < TestBaseScreen
  attr_reader :add_contact_button, :phone_text_field, :skip_text, :tab_login, :login_with_email, :input_email, :continue_with_email_text,
  :input_password, :button_login

  def initialize
    @add_contact_button = 'addContactButton'
    @phone_text_field   = 'contactPhoneEditText'
    @skip_text = 'com.she.sehatq.debug:id/tvSkip'
    @tab_login = 'com.she.sehatq.debug:id/navigation_profile'
    @continue_with_email_text = 'com.she.sehatq.debug:id/rl_login_email'
    @input_email = "//android.widget.EditText[@text='Ketik email atau username']"
    @input_password = "//android.widget.EditText[@text='Minimum 6 karakter']"
    @button_login = 'com.she.sehatq.debug:id/btn_login'
  end

  def wait_for
    Selenium::WebDriver::Wait.new(:timeout => 5).until { yield }
  end

  def main_screen?
    wait_for { element_exists('id', skip_text) }
    element_exists('id', skip_text)
  end

  def screen_loaded?
    element_exists('id', phone_text_field)
  end

  def tap_add_contact
    tap_on('id', add_contact_button)
  end

  def tap_skip_main_screen
    tap_on('id', skip_text)
  end

  def tap_tab_login
    wait_for { element_exists('id', tab_login) }
    tap_on('id', tab_login)
  end

  def tap_login_with_email
    wait_for { element_exists('id', continue_with_email_text) }
    tap_on('id', continue_with_email_text)
  end

  def fill_email(arg)
    fill_on('xpath', input_email, arg)
  end

  def fill_password(arg)
    fill_on('xpath', input_password, arg)
  end

  def tap_button_login
    tap_on('id', button_login)
  end

  def verify_success_login
  end
end
