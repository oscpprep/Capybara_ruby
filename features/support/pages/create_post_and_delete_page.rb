# features/support/pages/create_post_and_delete_page.rb
class CreatePostAndDeletePage < BasePage

   def initialize(login_page)
     @login_page = login_page
     @post_number = nil
   end

   def create_post
      conf = TestConfig.new
      @login_page.login(conf.username, conf.password)
      click_on 'Create New Post'
      fill_in 'title', with: 'test title'
      fill_in 'subtitle', with: 'test subtitle'
      fill_in 'img_url', with: 'https://example.com'
      # Find the iframe
      iframe = find('div#cke_1_contents iframe')

      # Switch to the iframe
      within_frame iframe do
      # Find the <p> element
      p_element = find('p')

      # Use JavaScript to set the inner HTML of the <p> element
      page.execute_script("arguments[0].innerHTML = 'Your text goes here'", p_element)
      end
      click_button 'Submit Post'
   end

   def verify_post_created
      post_link = find('.post-title', text: 'test title').find(:xpath, './ancestor::a')
      @post_number = post_link[:href].split('/').last.to_i
      return page.has_css?('.post-title', text: 'test title')
   end


   def navigate_to_post_and_verify_redirection
     find('.post-title', text: 'test title').click
     expect(page).to have_css('.post-heading h1', text: 'test title')
     expect(page).to have_css('.post-heading h2', text: 'test subtitle')
   end

   def go_back_to_home_page
     click_link 'Home'
   end

   def puts_post_number
      # puts "@post_number: #{@post_number.inspect}"
      puts "@post_number: #{@post_number}"
   end

   def delete_post
      delete_link_xpath = "//a[contains(@href, '/delete/#{@post_number.to_s}')]"
      delete_link = find(:xpath, delete_link_xpath)
      delete_link.click
   end

   def verify_post_not_found
      expect(page).not_to have_css('.post-title', text: 'test title')
   end
 end
