Feature: I want to be able to add several Spotlight to my cart
    As a user I want to be able to add several Spotlight to my cart


    Background: 
        Given that I am on the start page
    
    Scenario Outline: Adding several Spotlight to my cart
        Given that I have searched for the item tall and bright "Spotlight"
        When I click the buy button this "<quantity>" amount of times
        Then "<quantity>" "Spotlight" should be added to my cart so it can light up my life


        Examples:
          | product       | quantity |
          | Spotlight    | 2        |
          | Spotlight    | 3        |
          | Spotlight    | 4        |
          | Spotlight    | 5        |