# features/support/pages/login_page.rb
class LoginPage < BasePage

 def login(username, password)
    fill_in 'email', with: username
    fill_in 'password', with: password
    sleep 1 # Add a sleep to wait for the form to submit
    find('input#log_in').click
 end

 def verify_login_successful
    expect(page).to have_xpath("//li[@class='nav-item']/a[@class='nav-link' and @href='/logout']", wait: 10)
 end
end
