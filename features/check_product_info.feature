Feature: As a guest I check name and price between product detailed page and category page

  Scenario: Compare product info in cart page and product page
    Given I open homepage
    When I click on category page
    And On category page I click on product
    And On product details page I remember product name and price
    And On product details page I click Add to Cart button
    When I click to My Cart button
    Then On cart page I compare product page and cart page