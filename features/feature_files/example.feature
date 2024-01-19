# features/feature_files/example.feature

Feature: User Login

  Scenario: User logs in successfully
    Given I am on the home page
    When I navigate to the login page
    And I log in with username "oscp.prep2021@gmail.com" and password "YNG>iarqC5wGE~>"
    Then I should see a successful login 