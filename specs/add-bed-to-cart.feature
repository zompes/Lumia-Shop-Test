Feature: Adding a bed to the cart
    As a user I want to be able to add a bed
    to the cart, so that I can buy them.

    Scenario: I want to be able to add a bed to my cart
        Given that I am on the start page
        And I have searched for "bed" in the search field
        When When I click the buy button time 1 time
        Then 1 "bed" should be added to the cart
        And I should be able to remove it from the cart
 