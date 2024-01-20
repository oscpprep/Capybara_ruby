@login
Feature: User Login

 Scenario: User logs in successfully
    Given I am on the home page
    When I toggle the hamburger menu if the screen is small
    And I navigate to the login page
    And I log in with admin
    Then I should see a successful login

