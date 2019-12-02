# Test screen class
class TestScreen < TestBaseScreen
  attr_reader :add_contact_button, :phone_text_field, :skip_text, :tab_login, :login_with_email, :input_email, :continue_with_email_text,
  :input_password, :button_login, :slide, :tab_profile, :banner, :button_access_register, :button_register, :input_new_full_name,
  :input_new_password, :check_box, :input_new_email, :button_skip

  def initialize
    @add_contact_button = 'addContactButton'
    @phone_text_field   = 'contactPhoneEditText'
    @skip_text = 'com.she.sehatq.debug:id/tvSkip'
    @tab_login = 'com.she.sehatq.debug:id/navigation_profile'
    @continue_with_email_text = 'com.she.sehatq.debug:id/rl_login_email'
    @input_email = "//android.widget.EditText[@text='Ketik email atau username']"
    @input_password = "//android.widget.EditText[@text='Minimum 6 karakter']"
    @button_login = 'com.she.sehatq.debug:id/btn_login'
    @slide = 'com.she.sehatq.debug:id/ivHero'
    @tab_profile = "//android.widget.FrameLayout[@content-desc='Profile']"
    @banner = 'com.she.sehatq.debug:id/ivTopFeature'
    @button_access_register = 'com.she.sehatq.debug:id/rl_registration'
    @button_register = 'com.she.sehatq.debug:id/btn_signup'
    @input_new_full_name = "//android.widget.EditText[@text='Type your full name']"
    @input_new_email = "//android.widget.EditText[@text='example@example.com']"
    @input_new_password = "//android.widget.EditText[@text='Minimum 6 karakter']"
    @check_box = 'com.she.sehatq.debug:id/cb_terms'
    @button_skip = 'com.she.sehatq.debug:id/tv_skip'
  end

  def long_wait_for
    Selenium::WebDriver::Wait.new(:timeout => 30).until { yield }
  end

  def short_wait_for
    Selenium::WebDriver::Wait.new(:timeout => 5).until { yield }
  end

  def main_screen?
    long_wait_for { element_exists('id', skip_text) }
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
    tap_on('id', tab_login)
  end

  def login_loaded?
    element_exists('id', continue_with_email_text)
  end

  def tap_login_with_email
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

  def banner_loaded?
    element_exists('id', banner_loaded?)
  end

  def tap_access_register
    tap_on('id', button_access_register)
  end
  
  def fill_new_full_name(arg)
    fill_on('xpath', input_new_full_name, arg)
  end

  def fill_new_email(arg)
    fill_on('xpath', input_new_email, arg)
  end

  def fill_new_password(arg)
    fill_on('xpath', input_new_password, arg)
  end

  def tap_check_box
    tap_on('id', check_box)
  end

  def submit_register
    tap_on('id', button_register)
  end

  def tap_skip
    tap_on('id', button_skip)
  end
end
