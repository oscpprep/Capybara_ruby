@home_page = HomePage.new


Then('I navigate to the about page') do
  @home_page.navigate_to_about
end

Then('I navigate to the contact page') do
  @home_page.navigate_to_contact
end

Then('I navigate to the register page') do
  @home_page.navigate_to_register
end
