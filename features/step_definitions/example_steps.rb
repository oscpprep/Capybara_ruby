# features/step_definitions/example_steps.rb
Given('I am on the home page') do
  @home_page = HomePage.new
  @home_page.visit_page('http://localhost:5000')
  @home_page.verify_page_loaded
end

When('I navigate to the login page') do
  @home_page.navigate_to_login
end

And('I log in with username {string} and password {string}') do |username, password|
  @login_page = LoginPage.new
  @login_page.login(username, password)
end

Then('I should see a successful login message') do
  @login_page.verify_login_successful
end
