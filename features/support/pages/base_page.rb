# features/support/pages/base_page.rb

require 'rspec/expectations'
require 'rspec/matchers'
require_relative '../../config/test_config'


class BasePage < TestConfig
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers

  def visit_page(url)
    visit(url)
  end
end
