Scenario: Going to start page no matter where you are
    As a user I want to be able to click a button
    and immediately go back to start page with 1 click


    Scenario: Going back to start page from search page
        Given that I have searched for an product
        And I have clicked on buy button
        Then I want to be able to go back to start page with 1 click
        And that shoul also remove any items from the cart in the process