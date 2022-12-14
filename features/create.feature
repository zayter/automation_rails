Feature: Appt Form

  Scenario: Appt is created
    Given User visits the home page
    When  form loads
    And  User fills out the following fields
        | pet_name | owner_name | date       | time  | symptoms         |
        | Kyra     | Zayter     | 01-06-2022 | 23:50 | pain in the tail |
    And   User submits the form
    Then  A new appt is created     
   
