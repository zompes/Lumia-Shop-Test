Feature: I want to be able to add several beds to my cart
    As a user I want to be able to add several beds to my cart

    Background: 
        Given that I am on the start page

    Scenario Outline: Adding several beds to my cart
        Given that I have searched for "Säng"
        When I click the buy button "<quantity>" time
        Then "<quantity>" should be added to my cart


        Examples:
          | product| quantity |
          | Bed    | 1        |
          | Bed    | 2        |
          | Bed    | 5        |
          | Bed    | 9        |