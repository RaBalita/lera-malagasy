Feature: The static webpage is available online.
    The user will see the lera-malagasy in action on the webpage.

    Scenario: The webpage is available online.
        When user accesses the website lera-malagasy
        Then it should return a status code 200
