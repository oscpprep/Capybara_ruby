@post
Feature: Create and Delete Post

 Scenario: Successfully create and delete a post
   Given I am on the home page
   When I toggle the hamburger menu if the screen is small
   And I navigate to the login page
   When I navigate to create a new post
   Then I should see the post title
   And I should be redirected to the post
   When I go back to the home page
   Then I try to remember the post number
   Then I delete the post
   Then I verify the post is deleted
