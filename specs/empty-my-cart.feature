Feature: Emptying the cart
    As a user I want to be able to empty my cart

    Scenario: I want to be able to empty my cart so I can reset my cart
        Given that I have searched for "<product>" in the search field
        And clicked on buy button "<quantity>" time
        Then I want to be able to click on a button to empty my cart
        And all items in my cart should be removed
        And the cost of items in my cart should be reset to 0