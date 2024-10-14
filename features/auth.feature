Feature: Auth
  Scenario Outline: TC-AU-001 - As a user, I can register to Kasir Aja with valid credentials
    Given I am on the login page
    When I click the button register
    When I register with <email>, <password>, and <namatoko>
    Then I should be on the login page
    Examples:
      | email | password | namatoko |
      | leo123@gmail.com | nopass123 | leoshop |

  Scenario Outline: TC-AU-002 - As a user, I failed to register to Kasir Aja with all empty field
    Given I am on the login page
    When I click the button register
    When I register with <email>, <password>, and <namatoko>
    Then I should be on the register page
    Examples:
      | email | password | namatoko |
      |   |   |   |

  Scenario Outline: TC-AU-003 - As a user, I failed to register to Kasir Aja with empty nama toko
    Given I am on the login page
    When I click the button register
    When I register with <email>, <password>, and <namatoko>
    Then I should be on the register page
    Examples:
      | email | password | namatoko |
      | leo123@gmail.com | nopass123 |   |

  Scenario Outline: TC-AU-004 - As a user, I failed to register to Kasir Aja with empty email
    Given I am on the login page
    When I click the button register
    When I register with <email>, <password>, and <namatoko>
    Then I should be on the register page
    Examples:
      | email | password | namatoko |
      |   | nopass123 | leoshop |

  Scenario Outline: TC-AU-005 - As a user, I failed to register to Kasir Aja with empty password
    Given I am on the login page
    When I click the button register
    When I register with <email>, <password>, and <namatoko>
    Then I should be on the register page
    Examples:
      | email | password | namatoko |
      | leo123@gmail.com |   | leoshop |

  Scenario Outline: TC-AU-006 - As a user, I failed to register to Kasir Aja with invalid email
    Given I am on the login page
    When I click the button register
    When I register with <email>, <password>, and <namatoko>
    Then I should be on the register page
    Examples:
      | email | password | namatoko |
      | @gmail.com | nopass123 | leoshop |

  Scenario Outline: TC-AU-007 - As a user, I failed to register to Kasir Aja with registered email
    Given I am on the login page
    When I click the button register
    When I register with <email>, <password>, and <namatoko>
    Then I should be on the register page
    Examples:
      | email | password | namatoko |
      | leo123@gmail.com | nopass123 | leoshop |

  Scenario Outline: TC-AU-008 - As a user, I can login to Kasir Aja with valid credential
    Given I am on the login page
    When I login with <email> and <password>
    Then I should be on the dashboard page
    Examples:
      | email | password |
      | leo123@gmail.com | nopass123 |

  Scenario Outline: TC-AU-009 - As a user, I cant login to Kasir Aja with wrong password
    Given I am on the login page
    When I login with <email> and <password>
    Then I should be on the login page
    Examples:
      | email | password |
      | leo123@gmail.com | nopass321 |

  Scenario Outline: TC-AU-010 - As a user, I cant login to Kasir Aja with invalid account
    Given I am on the login page
    When I login with <email> and <password>
    Then I should be on the login page
    Examples:
      | email | password |
      | leo123_invalid@gmail.com | nopass123 |

  Scenario Outline: TC-AU-011 - As a user, I cant login to Kasir Aja with all empty field
    Given I am on the login page
    When I login with <email> and <password>
    Then I should be on the login page
    Examples:
      | email | password |
      |   |   |

  Scenario Outline: TC-AU-012 - As a user, I cant login to Kasir Aja with empty email
    Given I am on the login page
    When I login with <email> and <password>
    Then I should be on the login page
    Examples:
      | email | password |
      |   | nopass123 |

  Scenario Outline: TC-AU-013 - As a user, I cant login to Kasir Aja with empty password
    Given I am on the login page
    When I login with <email> and <password>
    Then I should be on the login page
    Examples:
      | email | password |
      | leo123@gmail.com |   |

