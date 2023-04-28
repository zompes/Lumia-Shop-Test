Feature: I want to be able to add several bordslampa to my cart
    As a user I want to be able to add several bordslampa to my cart


    Background: 
        Given that I am on the start page
    
    Scenario Outline: Adding several Bordslampa to my cart
        Given that I have searched for the item wonderful "Bordslampa"
        When I click the button to buy "<quantity>" a number of time
        Then "<quantity>" "Bordslampa" should be added to my shopping cart so that I can buy it


        Examples:
          | product       | quantity |
          | Bordslampa    | 2        |
          | Bordslampa    | 3        |
          | Bordslampa    | 4        |
          | Bordslampa    | 5        |