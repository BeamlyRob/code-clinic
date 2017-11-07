Feature: As a woman in tech, I would like to find features about Ada Lovelace so I can be inspired

  Scenario: Search for Ada
    Given I am on the Google homepage
    When I search for Ada Lovelace
    Then I should see a Wikipedia link

Scenario: Confirm Ada image on page
    Given I am on the Ada Lovelace results page
    Then I should see the correct Ada Lovelace image

    Scenario: Wikipedia link is valid
    Given I am on the Ada Lovelace results page
    When I select the Wikipedia link
    Then I should be taken to the expected page