require 'byebug'
require 'capybara/cucumber'
require 'httparty'
require 'json-schema'
require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'webdrivers'

World(RSpec::Matchers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://demo.applitools.com'
end

Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--disable-gpu')
  options.add_argument('--window-size=1920,1080')

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

require_relative 'pages/base_page'
require_relative 'pages/dashboard_page'
require_relative 'pages/login_page'
