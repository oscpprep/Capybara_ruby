# features/support/env.rb
require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require_relative 'pages/base_page'

Capybara.register_driver :webdriverio do |app|
  # Configure WebDriver options for Capybara here
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.default_driver = :webdriverio
Capybara.default_max_wait_time = 10
