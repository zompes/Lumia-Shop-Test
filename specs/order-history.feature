Feature: Order History
  As a registered customer
  I want to be able to view my order history
  So that I can keep track of my past orders

  Scenario: View recent orders
        Given I am logged in as a registered customer
        When I navigate to the "Order History" page
        Then I should see a list of my recent orders
        And I should see the order numbers, dates, and totals
        And I should be able to click on an order to view the details

  Scenario: View order details
    Given I am on the "Order History" page
    And I have at least one past order
    When I click on an order from the list
    Then I should see the order details
    And I should see the product names, prices, and quantities
    And I should see the order total and shipping details
    And I should be able to go back to the order history page

  Scenario: View empty order history
    Given I am logged in as a registered customer
    And I do not have any past orders
    When I navigate to the "Order History" page
    Then I should see a message indicating that I have no past orders
    And I should not see any order details or order numbers

  Scenario: View order history with multiple pages
    Given I am logged in as a registered customer
    And I have more than 10 past orders
    When I navigate to the "Order History" page
    Then I should see the first 10 orders listed
    And I should see pagination controls to view more orders
    And I should be able to navigate to other pages of order history

  Scenario: View order history with filters
    Given I am logged in as a registered customer
    When I navigate to the "Order History" page
    And I have the option to filter orders by date, status, or other criteria
    Then I should be able to apply filters to view specific orders
    And I should see the filtered orders listed with the corresponding details
