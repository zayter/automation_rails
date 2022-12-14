require 'watir'
require 'page-object'
require 'appom'

# Before do
#   @browser = Watir::Browser.new :chrome
#   @browser.window.maximize
# end

appium_lib_options = {
  server_url: 'http://0.0.0.0:4723/wd/hub'
}

android_caps = {
  platformName: 'android',
  deviceName: 'emulator-5554',
  appiumVersion: '1.22.3',
  app: File.expand_path('../app/PreciseUnitConversion.apk', __dir__)
}

Appom.register_driver do
  options = {
    appium_lib: appium_lib_options,
    caps: android_caps
  }
  Appium::Driver.new(options, false)
end
