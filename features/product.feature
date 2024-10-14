Feature: Product
    Scenario Outline: TC-PD-001 - As a user, I can add product with valid credential
        Given I am on the login page
        When I login with <email> and <password>
        And I click the produk menu
        And I click the tambah button
        And I add product using <kode>, <nama>, <deskripsi>, <hargabeli>, <hargajual>, <stok>, and <kategori>
        Then I should be on the produk page
        Examples:
        | email | password | kode | nama | deskripsi | hargabeli | hargajual | stok | kategori
        | leo123@gmail.com | nopass123 | BR979870 | gula | ini gula | 4000 | 6000 | 20 | sembako

    Scenario Outline: TC-PD-002 - As a user, I cant add product with all empty field
        Given I am on the login page
        When I login with <email> and <password>
        And I click the produk menu
        And I click the tambah button
        And I add product using <kode>, <nama>, <deskripsi>, <hargabeli>, <hargajual>, <stok>, and <kategori>
        Then I should be on the tambah produk page
        Examples:
        | email | password | kode | nama | deskripsi | hargabeli | hargajual | stok | kategori
        | leo123@gmail.com | nopass123 | BR979870 |   |   |   |   |   | sembako