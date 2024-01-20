# features/step_definitions/authentication_steps.rb
require_relative '../config/test_config'

Given('I am on the home page') do
  @home_page = HomePage.new
  @home_page.visit_page('http://localhost:5000')
 end

 When('I toggle the hamburger menu if the screen is small') do
  @home_page = HomePage.new
  @home_page.toggle_hamburger_menu_if_small_screen
 end

 When('I navigate to the login page') do
  @home_page.navigate_to_login
 end

 And('I log in with admin') do
  @login_page = LoginPage.new
  conf = TestConfig.new
  @login_page.login(conf.username, conf.password)
 end

 Then('I should see a successful login') do
  @login_page.verify_login_successful
 end
