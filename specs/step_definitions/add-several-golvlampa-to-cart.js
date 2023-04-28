import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

let searchedFor;

Given('that I have searched for the item nice and bright {string}', (a) => {
  searchedFor = a;
  cy.get('#search').type(a);
});

When('I click the button to buy the item this many times {string}', (quantity) => {
  for (let i = 1; i <= +quantity; i++) {
    cy.log("searchedFor", searchedFor);
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchedFor)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
  }
});

Then('{string} {string} should be added to my cart so that I can buy it and use it for later', (quantity, a) => {
  cy.get('#cart li')
    .contains(a)
    // and also contains the correct quantity
    .contains(quantity + 'st')
    // we should 1 element
    .should('have.length', 1);
});