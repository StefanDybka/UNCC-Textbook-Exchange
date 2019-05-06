Feature: Sign up 
  
  As a user
  I want proper warnings on the sign up page
  
  Scenario: As a user I want to see warning when fields are empty
   Given I am on the home page
    Then I see the "UNCC Textbook Exchange" page
    When I click on the "Log In" btn
    Then I see the "Log In" page
    When I click the "Sign up now!" link
    Then I see the "Sign up" page
    When I click on the "Create my account" btn
    Then I see the "First name can't be blank" Text
    Then I see the "First name is too short (minimum is 1 character)" Text
    Then I see the "Last name can't be blank" Text
    Then I see the "Last name is too short (minimum is 1 character)" Text
    Then I see the "Email can't be blank" Text
    Then I see the "Email must be a valid UNCC email" Text
    Then I see the "Password can't be blank" Text


    Scenario: As a user I want proper warnings for invalid passwords
    Given I am on the home page
    Then I see the "UNCC Textbook Exchange" page
    When I click on the "Log In" btn
    Then I see the "Log In" page
    When I click the "Sign up now!" link
    Then I see the "Sign up" page
    When I click on the "Create my account" btn
    Then I enter "Test" into the "User[password]" input field
    When I click on the "Create my account" btn
    Then I see the "Password confirmation doesn't match Password" Text
    Then I see the "Password is too short (minimum is 6 characters)" Text

