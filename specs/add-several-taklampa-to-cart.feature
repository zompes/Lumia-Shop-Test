Feature: I want to be able to add several Taklampa to my cart
    As a user I want to be able to add several Taklampa to my cart


    Background: 
        Given that I am on the start page
    
    Scenario Outline: Adding several Taklampa to my cart
        Given that I have searched for the item "Taklampa" that hangs above
        When I click the buy button "<quantity>" times because I got the money
        Then "<quantity>" "Taklampa" should be added to my cart so that my house will be bright


        Examples:
          | product       | quantity |
          | Taklampa    | 2        |
          | Taklampa    | 3        |
          | Taklampa    | 4        |
          | Taklampa    | 5        |