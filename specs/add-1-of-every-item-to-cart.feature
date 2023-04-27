Feature: Adding 1 different items to my cart
    As a user I want to be able to add 1 different items to my cart

    Background:
        Given that I am on the start page

    Scenario: I want to be able to add 1 "Bordslampa" to my cart
        Given I search for "Bordslampa"
        When I click on the buy button for the "Bordslampa" 1 time
        Then 1 "Bordslampa" should be added to the cart

    Scenario: I want to be able to add 1 "Lampett" to my cart
        Given I search for the item "Lampett"
        When I click on the buy button for the "Lampett" 1 time only
        Then 1 "Lampett" should be added to my cart

    Scenario: I want to be able to add 1 "Taklampa" to my cart
        Given I search for the nice item "Taklampa"
        When I click on the buy button for the "Taklampa" a single time
        Then 1 "Taklampa" should be added to my wonderful cart

    Scenario: I want to be able to add 1 "Spotlight" to my cart
        Given I search for the very bright item "Spotlight"
        When I click on the buy button for the "Spotlight"
        Then 1 "Spotlight" should be added to my extravagant cart

    Scenario: I want to be able to add 1 "Säng" to my cart
        Given I search for the cozy item "Säng"
        When I click to buy the item "Säng" 1 time
        Then 1 "Säng" should be added to my large cart