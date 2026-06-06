Feature: The static website is available online.
    The user will see the lera-malagasy in action on the website.

    Scenario: The website is available online.
        When user accesses the website lera-malagasy
        Then it should return a status code 200
