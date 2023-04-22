Feature: User Registration
  As a new user
  I want to be able to register an account
  So that I can access the features and functionalities of the application

  Scenario: Successful user registration
    Given I am on the registration page
    When I fill in my name, email, password, and click the "Register" button
    Then I should see a confirmation message "Account successfully registered"
    And I should receive a confirmation email
    And I should be logged in to the application

  Scenario: User registration with existing email
    Given I am on the registration page
    And there is already a user with the email "user@example.com"
    When I fill in my name, email "user@example.com", password, and click the "Register" button
    Then I should see an error message "Email already exists. Please use a different email"

  Scenario: User registration with invalid email
    Given I am on the registration page
    When I fill in my name, invalid email "user@example", password, and click the "Register" button
    Then I should see an error message "Invalid email. Please enter a valid email address"

  Scenario: User registration with weak password
    Given I am on the registration page
    When I fill in my name, email, weak password "12345", and click the "Register" button
    Then I should see an error message "Password is too weak. Please choose a stronger password"

  Scenario: User registration with missing required fields
    Given I am on the registration page
    When I click the "Register" button without filling in any fields
    Then I should see error messages for missing required fields "Name is required", "Email is required", "Password is required"
