@home
Feature: Landing page

Scenario: User browses the Landing page
    Given I am on the home page
    When I toggle the hamburger menu if the screen is small
    Then I navigate to the login page
    Then I navigate to the about page
    Then I navigate to the contact page
    Then I navigate to the register page
    