const { Given, When, Then } = require('@wdio/cucumber-framework');
const { expect, $ } = require('@wdio/globals')

const LoginPage = require('../pageobjects/login.page');
const RegisterPage = require('../pageobjects/register.page');
const SecurePage = require('../pageobjects/secure.page');

const pages = {
    login: LoginPage,
    register: RegisterPage
}

Given(/^I am on the (\w+) page$/, async (page) => {
    await pages[page].open();
});

When(/^I login with (.+) and (.+)$/, async (email, password) => {
    await LoginPage.login(email, password);
});

When(/^I register with (.*), (.*), and (.*)$/, async (email, password, namatoko) => {
    await RegisterPage.register(email, password, namatoko);
});

When(/^I click the button (.*)$/, async (title) => {
    if(title == 'register'){
        await LoginPage.click_button(title);
    }
});

Then(/^I should see a flash message saying (.*)$/, async (message) => {
    await expect(SecurePage.flashAlert).toBeExisting();
    await expect(SecurePage.flashAlert).toHaveText(expect.stringContaining(message));
});

// Dashboard
Then(/^I should be on the (\w+) page$/, async (pageName) => {
    const currentUrl = await browser.getUrl();
    const expectedUrls = {
        login: 'login',
        register: 'register',
        dashboard: 'dashboard'
    };

    await expect(currentUrl).toContain(expectedUrls[pageName]);
});


