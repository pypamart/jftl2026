@pricing @loyalty
Feature: Loyalty discount on coffee orders
  In order to reward customer loyalty and increase retention
  As a returning customer with a loyalty card
  I want to receive a 10% discount on eligible orders once I have completed my 10th purchase

  """markdown
  **Bounded Context:** Pricing
  **Story:** LOYALTY-42 — Loyalty card discount rules
  **Owner:** @product-cafe · @qa-team
  **Last reviewed:** 2026-04-20 · Sprint #12

  ### References
  - [Loyalty discount rules](docs/reference/pricing/loyalty-discount.md)
  - [Promotions stacking policy](docs/reference/pricing/promotions.md#stacking-policy)
  - [ADR-021 — Loyalty tiers](docs/adr/ADR-021-loyalty-tiers.md)
  - [Domain model — LoyaltyDiscount](docs/domain-model/pricing/LoyaltyDiscount.md)
  """

  Background:
    Given the loyalty discount rate is configured at 10%
    And the loyalty eligibility threshold is 10 completed orders

  Rule: A customer with 10 or more completed orders receives a 10% discount
    """markdown
    Eligibility & discount calculation.
    Ref: [loyalty-discount.md#eligibility](docs/reference/pricing/loyalty-discount.md#eligibility)
    """

    @happy @sprint-12
    Example: Loyal customer gets a discount on a standard order
      Given a customer "Alice" who has completed 10 previous orders
      When she orders a "Caffè Latte" priced at €4.50
      Then the total should be €4.05
      And the receipt shows "Loyalty discount (10%): -€0.45"
      And a "Loyal Customer" badge is displayed on her account

    @happy @sprint-12
    Scenario Outline: Discount is consistent across coffee types
      Given a loyal customer with <orders> completed orders
      When they order a "<coffee>" priced at €<price>
      Then the total should be €<expected>

      Examples: Standard menu items — docs/reference/menu/pricing.md
        | orders | coffee        | price | expected |
        | 10     | Espresso      | 2.50  | 2.25     |
        | 12     | Caffè Latte   | 4.50  | 4.05     |
        | 20     | Cold Brew     | 5.00  | 4.50     |
        | 35     | Flat White    | 4.00  | 3.60     |

    @sad
    Example: Customer below threshold receives no discount
      Given a customer "Bob" with 9 completed orders
      When he orders an "Espresso" priced at €2.50
      Then the total should be €2.50
      And no discount is applied

    @edge
    Example: Customer reaches the threshold for the very first time
      Given a customer "Carol" who just completed her 10th order
      When she places a new order for a "Flat White" priced at €4.00
      Then the total should be €3.60
      And a "Welcome to the Loyalty Club!" notification is sent to her email
      And the receipt shows "First loyalty discount applied: -€0.40"

    @edge
    Example: A cancelled order temporarily removes eligibility
      Given a customer "Dave" whose last order was cancelled (9 valid orders remain)
      When he orders a "Cortado" priced at €3.00
      Then the total should be €3.00
      And no discount is applied

  Rule: Loyalty discount does not stack with promotions or apply to excluded items
    """markdown
    Exclusions: promotions, gift vouchers & special offers.
    Refs: [loyalty-discount.md#exclusions](docs/reference/pricing/loyalty-discount.md#exclusions)
    · [promotions.md#stacking-policy](docs/reference/pricing/promotions.md#stacking-policy)
    """

    @sad @sprint-12
    Example: Discount does not stack with an active promotional price
      Given a loyal customer "Eve" with 15 completed orders
      And a 20% promotional discount is active on "Seasonal Pumpkin Latte"
      When she orders a "Seasonal Pumpkin Latte" priced at €5.50
      Then only the promotional discount of 20% applies
      And the total should be €4.40
      And no loyalty discount is applied
      And the receipt includes the following notice:
        """
        Loyalty discount not applicable — a promotional price is already active.
        See: docs/reference/pricing/promotions.md#stacking-policy
        """

    @sad
    Example: Discount cannot be applied to gift voucher purchases
      Given a loyal customer "Frank" with 20 completed orders
      When he purchases a gift voucher worth €25.00
      Then the total should be €25.00
      And no discount is applied
      And the following entry is written to the audit log:
        | field      | value                                                   |
        | customer   | Frank                                                   |
        | item_type  | gift_voucher                                            |
        | reason     | Gift vouchers are excluded from loyalty discounts       |
        | policy_ref | docs/reference/pricing/loyalty-discount.md#exclusions   |

    @edge
    Example: Mixed cart — discount applies only to loyalty-eligible items
      Given a loyal customer "Grace" with 12 completed orders
      And a promotional discount is active on "Cold Brew"
      When she adds the following items to her basket:
        | item          | unit price | promo active | loyalty eligible |
        | Caffè Latte   | €4.50      | no           | yes              |
        | Cold Brew     | €5.00      | yes          | no               |
        | Espresso      | €2.50      | no           | yes              |
      Then the loyalty discount applies only to "Caffè Latte" and "Espresso"
      And the basket total should be €11.25
      And the receipt itemises as follows:
        | item          | unit price | discount | line total |
        | Caffè Latte   | €4.50      | -€0.45   | €4.05      |
        | Cold Brew     | €5.00      | —        | €5.00      |
        | Espresso      | €2.50      | -€0.25   | €2.25      |
