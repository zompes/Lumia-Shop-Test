Feature: I want to be able to add several golvlampa to my cart
    As a user I want to be able to add several golvlampa to my cart


    Background: 
        Given that I am on the start page
    
    Scenario Outline: Adding several golvlampa to my cart
        Given that I have searched for the item nice and bright "Golvlampa"
        When I click the button to buy the item this many times "<quantity>"
        Then "<quantity>" "Golvlampa" should be added to my cart so that I can buy it and use it for later


        Examples:
          | product      | quantity |
          | Golvlampa    | 2        |
          | Golvlampa    | 3        |
          | Golvlampa    | 4        |
          | Golvlampa    | 5        |