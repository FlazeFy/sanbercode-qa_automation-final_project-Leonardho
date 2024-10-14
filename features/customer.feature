Feature: Customer
    Scenario Outline: TC-CS-001 - As a user, I can add new customer with valid credential
        Given I am on the login page
        When I login with <email> and <password>
        And I click the pelanggan menu
        And I click the tambah button
        And I add user using <nama>, <nohp>, <alamat>, dan <keterangan>
        Then I should be on the pelanggan page
        Examples:
        | email | password | nama | nohp | alamat | keterangan |
        | leo123@gmail.com | nopass123 | pelanggan1 | 8123456 | jl. mawar | pelanggan vip |

    Scenario Outline: TC-CS-002 - As a user, I cant add new customer with all empty field
        Given I am on the login page
        When I login with <email> and <password>
        And I click the pelanggan menu
        And I click the tambah button
        And I add user using <nama>, <nohp>, <alamat>, dan <keterangan>
        Then I should be on the tambah pelanggan page
        Examples:
        | email | password | nama | nohp | alamat | keterangan |
        | leo123@gmail.com | nopass123 |   |   |   |   |