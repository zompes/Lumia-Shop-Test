import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

let searchedFor;

Given('I search for {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('I click on the buy button for the {string} 1 time', (searchTerm) => {
  cy.log("searchedFor", searchTerm);
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchTerm)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
});

Then('1 {string} should be added to the cart', (searchTerm) => {
  // find a li (list item) in the cart that contains the product name
  cy.get('#cart li')
    .contains(searchTerm)
    // and also contains the correct quantity
    .contains('st')
    // we should 1 element
    .should('have.length', 1);
});

Given('I search for the item {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('I click on the buy button for the {string} 1 time only', (searchTerm) => {
  cy.log("searchedFor", searchTerm);
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchTerm)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
});

Then('1 {string} should be added to my cart', (searchTerm) => {
  // find a li (list item) in the cart that contains the product name
  cy.get('#cart li')
    .contains(searchTerm)
    // and also contains the correct quantity
    .contains('st')
    // we should 1 element
    .should('have.length', 1);
});

Given('I search for the nice item {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('I click on the buy button for the {string} a single time', (searchTerm) => {
  cy.log("searchedFor", searchTerm);
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchTerm)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
});

Then('1 {string} should be added to my wonderful cart', (searchTerm) => {
  // find a li (list item) in the cart that contains the product name
  cy.get('#cart li')
    .contains(searchTerm)
    // and also contains the correct quantity
    .contains('st')
    // we should 1 element
    .should('have.length', 1);
});

Given('I search for the very bright item {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('I click on the buy button for the {string}', (searchTerm) => {
  cy.log("searchedFor", searchTerm);
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchTerm)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
});

Then('1 {string} should be added to my extravagant cart', (searchTerm) => {
  // find a li (list item) in the cart that contains the product name
  cy.get('#cart li')
    .contains(searchTerm)
    // and also contains the correct quantity
    .contains('st')
    // we should 1 element
    .should('have.length', 1);
});

Given('I search for the cozy item {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('I click to buy the item {string} 1 time', (searchTerm) => {
  cy.log("searchedFor", searchTerm);
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchTerm)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
});

Then('1 {string} should be added to my large cart', (searchTerm) => {
  // find a li (list item) in the cart that contains the product name
  cy.get('#cart li')
    .contains(searchTerm)
    // and also contains the correct quantity
    .contains('st')
    // we should 1 element
    .should('have.length', 1);
});