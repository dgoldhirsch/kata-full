Feature: As a user
  in order to see what I would expect to see
  I see only my own guesses

  Scenario: I sign up successfully
    Given I sign up
    Then I am signed in

  Scenario Outline: I fail to sign up
    Given I <bad_thing_to_do>
    Then I am not signed in

    Examples:
      | bad_thing_to_do       |
      | omit the email        |
      | duplicate the email   |
      | omit the password     |
      | omit the confirmation |
