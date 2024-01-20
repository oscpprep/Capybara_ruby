# features/step_definitions/post_steps.rb
When('I navigate to create a new post') do
  @login_page = LoginPage.new
  @create_post_page = CreatePostAndDeletePage.new(@login_page)
  @create_post_page.create_post
end

Then('I should see the post title') do
  expect(@create_post_page.verify_post_created).to be_truthy
end

Then('I should be redirected to the post') do
  @create_post_page.navigate_to_post_and_verify_redirection
end

When('I go back to the home page') do
  @create_post_page.go_back_to_home_page
end

Then('I try to remember the post number') do
  @create_post_page.puts_post_number
end

Then('I delete the post') do
  @create_post_page.delete_post
end

Then('I verify the post is deleted') do
  @create_post_page.verify_post_not_found
end
