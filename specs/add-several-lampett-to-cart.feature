Feature: I want to be able to add several Lampett to my cart
    As a user I want to be able to add several Lampett to my cart


    Background: 
        Given that I am on the start page
    
    Scenario Outline: Adding several Lampett to my cart
        Given that I have searched for the tall item "Lampett"
        When I click the button to buy this "<quantity>" amount of times
        Then "<quantity>" "Lampett" should be added to my shopping cart


        Examples:
          | product       | quantity |
          | Lampett    | 2        |
          | Lampett    | 3        |
          | Lampett    | 4        |
          | Lampett    | 5        |