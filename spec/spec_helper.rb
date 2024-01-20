# spec/spec_helper.rb
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include Capybara::DSL
end

Capybara.configure do |config|
  # Configure Capybara to use your preferred driver (e.g., :selenium_chrome)
  config.default_driver = :selenium_chrome
  # Add other configurations as needed
end
