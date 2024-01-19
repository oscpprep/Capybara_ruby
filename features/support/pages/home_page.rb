# features/step_definitions/example_steps.rb
class HomePage < BasePage
  def navigate_to_login
    click_link 'Login'
  end

  def verify_page_loaded
    # You can add verification logic for the home page if needed
  end
end
