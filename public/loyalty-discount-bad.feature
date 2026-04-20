Feature: loyalty discount

  Scenario: test discount
    Given I open the browser and navigate to http://localhost:3000/shop
    And I click on the login button
    And I type "alice@test.com" in the email input field
    And I type "P@ssw0rd123" in the password input field
    And I click the submit button
    And the database table "customers" has a row where id=42 and loyalty_count=10
    And I add item with SKU "LATTE-001" to the cart by calling POST /api/cart with body {"sku":"LATTE-001","qty":1}
    When I click the checkout button and the PricingService.calculateTotal() method is invoked
    Then the DOM element "#order-total" should contain the string "4.05"
    And the field discount_applied in the orders table is set to true
    And the HTTP response body contains {"discount":0.45,"discountType":"LOYALTY_10PCT"}

  Scenario: test discount with more orders
    Given I open the browser and navigate to http://localhost:3000/shop
    And I click on the login button
    And I type "bob@test.com" in the email input field
    And I type "P@ssw0rd456" in the password input field
    And I click the submit button
    And the database table "customers" has a row where id=99 and loyalty_count=20
    And I add item with SKU "BREW-003" to the cart by calling POST /api/cart with body {"sku":"BREW-003","qty":1}
    When I click the checkout button and the PricingService.calculateTotal() method is invoked
    Then the DOM element "#order-total" should contain the string "4.50"
    And the field discount_applied in the orders table is set to true
    And the HTTP response body contains {"discount":0.50,"discountType":"LOYALTY_10PCT"}
