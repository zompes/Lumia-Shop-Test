Feature: I want to be able to add several beds to my cart
    As a user I want to be able to add several beds to my cart

    Background: 
        Given that I am on the start page

    Scenario Outline: Adding several beds to my cart
        Given that I have searched for the item "Säng"
        When I click the buy button "<quantity>" times
        Then "<quantity>" "Säng" should be added to my cart so that I can buy it


        Examples:
          | product| quantity |
          | Säng    | 1        |
          | Säng    | 2        |
          | Säng    | 5        |
          | Säng    | 9        |