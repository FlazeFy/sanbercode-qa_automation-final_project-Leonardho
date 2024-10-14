Feature: User
    Scenario Outline: TC-US-001 - As a user, I can add new user with valid credential
        Given I am on the login page
        When I login with <email> and <password>
        And I click the pengguna menu
        And I click the tambah button
        And I add user using <nama>, <emailbaru>, dan <passwordbaru>
        Then I should be on the pengguna page
        Examples:
        | email | password | nama | emailbaru | passwordbaru |
        | leo123@gmail.com | nopass123 | user123 | newemail@gmail.com | newpass123 |

    Scenario Outline: TC-US-002 - As a user, I cant add new user with all empty field
        Given I am on the login page
        When I login with <email> and <password>
        And I click the pengguna menu
        And I click the tambah button
        And I add user using <nama>, <emailbaru>, dan <passwordbaru>
        Then I should be on the tambah pengguna page
        Examples:
        | email | password | nama | emailbaru | passwordbaru |
        | leo123@gmail.com | nopass123 |   |   |   |