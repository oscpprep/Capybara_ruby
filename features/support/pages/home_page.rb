# features/step_definitions/example_steps.rb
class HomePage < BasePage
  def navigate_to_login
    click_link 'Login'
  end

  def toggle_hamburger_menu_if_small_screen
    hamburger_button = find(:xpath, "//button[contains(text(), 'Menu')]", visible: :all)
    hamburger_button.click if hamburger_button.visible?
  end

  def verify_page_loaded
    # You can add verification logic for the home page if needed
  end
end
