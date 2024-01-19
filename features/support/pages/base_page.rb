# features/step_definitions/example_steps.rb
class BasePage
  include Capybara::DSL

  def visit_page(url)
    visit(url)
  end
end
