Feature: Nav bar buttons

  As a user
  I want to use the top nav bar buttons

  Scenario: As a user I want to use the UNCC Textbook Exchange button
    Given I am on the home page
    Then I see the "UNCC Textbook Exchange" page
    When I click on the "UNCC Textbook Exchange" btn
    Then I see the "UNCC Textbook Exchange" page

  Scenario: As a user I want to use the log in button
    Given I am on the home page
    Then I see the "UNCC Textbook Exchange" page
    When I click on the "Log In" btn
    Then I see the "Log In" page

  Scenario: As a user I want to use the listings button
    Given I am on the home page
    Then I see the "UNCC Textbook Exchange" page
    When I click on the "Listings" btn
    Then I see the "Book Listings" page