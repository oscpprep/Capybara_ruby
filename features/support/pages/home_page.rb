# features/step_definitions/example_steps.rb
class HomePage < BasePage
  def navigate_to_login
    click_link 'Login'
    # Add a puts statement to print the content of the ".site-heading" element
    # puts "Content of .site-heading: #{find('.site-heading').text}"
    expect(page).to have_css('.page-heading', text: "Log In")
  end

  def navigate_to_home
    click_link 'Home'
    expect(page).to have_css('.site-heading', text: "Obaid's Blog")
  end

  def navigate_to_about
    click_link 'About'
    expect(page).to have_css('.page-heading', text: "About Me")
  end

  def navigate_to_register
    click_link 'Register'
    expect(page).to have_css('.page-heading', text: "Register")
  end

  def navigate_to_contact
    click_link 'Contact'
    expect(page).to have_css('.page-heading', text: "Contact")
  end

  def toggle_hamburger_menu_if_small_screen
    hamburger_button = find(:xpath, "//button[contains(text(), 'Menu')]", visible: :all)
    hamburger_button.click if hamburger_button.visible?
  end
end
