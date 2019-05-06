Feature: home page
  
  As a user
  I want to view the homepage and use main buttons
  
  Scenario: As a user I want to view the home page and use the main About button
    Given I am on the home page
    Then I see the "UNCC Textbook Exchange" page
    When I click on the "About UNCC Textbook Exchange" btn
    Then I see the "About" page

 
  Scenario: As a user I want to use the main help button
    Given I am on the home page
    Then I see the "UNCC Textbook Exchange" page
    When I click on the "Help" btn
    Then I see the "Help" page
    
    
  Scenario: As a user I want to use the main Listings button
    Given I am on the home page
    Then I see the "UNCC Textbook Exchange" page
    When I click on the "View All Listings" btn
    Then I see the "Book Listings" page