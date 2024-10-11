const { $ } = require('@wdio/globals')
const Page = require('./page');

/**
 * sub page containing specific selectors and methods for a specific page
 */
class RegisterPage extends Page {
    /**
     * define selectors using getter methods
     */
    get inputNamaToko () {
        return $('#name');
    }
    
    get inputEmail () {
        return $('#email');
    }

    get inputPassword () {
        return $('#password');
    }

    get btnSubmit () {
        return $('button[type="submit"]');
    }

    async register (email, password, namatoko) {
        await this.inputNamaToko.setValue(namatoko);
        await this.inputEmail.setValue(email);
        await this.inputPassword.setValue(password);
        await this.btnSubmit.click();
        await browser.pause(10000);
    }

    /**
     * overwrite specific options to adapt it to page object
     */
    open () {
        return super.open('register');
    }
}

module.exports = new RegisterPage();
