Feature: Auth
  Scenario Outline: TC-AU-001 - As a user, I can register to Kasir Aja with valid credentials
    Given I am on the login page
    When I click the button register
    When I register with <email>, <password>, and <namatoko>
    Then I should be on the login page
    Examples:
      | email | password | namatoko |
      | leo12333@gmail.com | nopass123 | leoshop |

  Scenario Outline: TC-AU-008 - As a user, I can login to Kasir Aja with valid credential
    Given I am on the login page
    When I login with <email> and <password>
    Then I should be on the dashboard page
    Examples:
      | email | password |
      | leo123@gmail.com | nopass123 |

