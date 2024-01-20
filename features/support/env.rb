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

Before do
  # Other setup steps...
end

After do |scenario|
  # Other cleanup steps...
  report_path = "file://#{Dir.pwd}/reports/report.html"
  puts "Local Cucumber Report: #{report_path}"
  # Quit the WebDriver after each scenario
  Capybara.current_session.driver.quit
end
