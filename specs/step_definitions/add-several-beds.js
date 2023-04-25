import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

// this step definition is already in search.js
// so commented it out since duplicate step definitions
// are not allowed
/*Given('that I am on the start page', () => {
});*/

// A bed did not exist in the shop before
// so I had to add one myself.

let searchedFor;

Given('that I have searched for {string}', (a) => {
  searchedFor = a;
  cy.get('#search').type(a);
});

When('I click the buy button {string} time', (quantity) => {
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

Then('{string} should be added to my cart', (quantity) => {
  cy.get('Säng')
    .contains(productName)
    // and also contains the correct quantity
    .contains(quantity + 'st')
    // we should 1 element
    .should('have.length', 3);
});