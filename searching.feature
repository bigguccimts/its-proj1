Feature: Searching products

    Background:
        Given application is at a page where search bar is displayed

    Scenario: Searching for existing products using the search bar
        When the user enters "<existing>" into the search bar
        Then products that match the search criteria are displayed

    Scenario: Searching for nonexisting products using the search bar
        When the user enters "<nonexisting>" into the search bar
        Then no products matching the criteria will be shown

        Examples: Products
            | existing | nonexisting |
            | mac      | laptop      |
            | canon    | asus        |
            | iphone   | panasonic   |
