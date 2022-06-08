Feature: Delete a Schedule
  As a Student, I want to delete a schedule so that it's removed from my list of options.

  Background:
    Given I pause for 5 seconds
    And I am logged in
    And I open the drawer
    And I tap the button that contains the text "Escolha de Turmas"

  Scenario: Deleting a schedule
    Given I have courses selected for class registration
    And I have a schedule named "Teste Gherkin"
    When I tap the button that contains the text "Teste Gherkin"
    And I tap the "delete schedule" icon
    And I tap the button that contains the text "Apagar"
    Then I expect the text "Escolha de Turmas" to be present
    And I expect the text "Teste Gherkin" to be absent
