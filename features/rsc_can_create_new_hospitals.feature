@javascript

Feature: RSC creates a new hospital 
    As a RSC,
    In order to create hospitals,
    I would like to access the dashboard, click on the “Hospitals” button and fill in the hospital name.

    Background: 
        Given the following hospitals exists
            | name        | 
            | Hospital 1  | 
            | Hospital 2  |

    Scenario: RSC can successfully add new hospitals
        Given I am on the landing page
        And I click on "Hospitals"
        Then I should see "Hospital 1"
        And I fill in "Add Hospitals" with "Hospital 3"
        And I click on "Add"
        Then stop
        Then I should see "Hospital 3"

    Scenario: RSC cannot add hospitals if it already exists
        Given I am on the landing page
        And I click on "Hospitals"
        Then I see "Hospital 1"
        And I fill in "Add Hospitals" with "Hospital 2"
        And I click on "Add"
        Then I should see "Hospital already exists. Your hospital could not be saved."

