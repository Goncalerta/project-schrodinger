Feature: Select Course Units
  As a Student, I want to choose the courses I am enrolling in, so that I can apply for their classes.

  Background:
    Given I pause for 5 seconds
    And I am logged in
    And I open the drawer
    And I tap the button that contains the text "Escolha de Turmas"

  Scenario: Selecting Course Units
    Given I don't have courses selected for class registration
    When I tap the element that contains the text "Nenhuma unidade curricular"
    And I tap the first child of type "CheckboxListTile" of the widget of type "ListView"
    And I tap the back button
    Then I expect the text "Nenhuma unidade curricular" to be absent

  Scenario: Unselecting Course Units
    Given I don't have courses selected for class registration
    When I tap the element that contains the text "Nenhuma unidade curricular"
    And I tap the first child of type "CheckboxListTile" of the widget of type "ListView"
    And I tap the first child of type "CheckboxListTile" of the widget of type "ListView"
    And I tap the back button
    Then I expect the text "Nenhuma unidade curricular" to be present
