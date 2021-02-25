Scenario: Sign Up
Given I am on a page with the URL 'https://www.trello.com/'
When I click on element located `By.xpath(//a[@data-analytics-button="whiteSignupHeroButton"])`
When I enter `<email>` in field located `By.xpath(//input[@placeholder="Enter email"])`
When I click on element located `By.xpath(//input[@id="signup-submit"])`
When I wait until the page title contains the text 'account'
When I enter `<password>` in field located `By.xpath(//input[@placeholder="Create password"])`
When I enter `<fullName>` in field located `By.xpath(//input[@placeholder="Enter full name"])`
When I click on element located `By.xpath(//span[text()="Sign up"])`
When I wait until the page title contains the text 'Boards'
Then the text '<Welcome>' exists
Examples:
|email                             |fullName                  |password                                |
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(regexify '[a-z]{5}[A-Z]{4}')}|
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(regexify '[a-z]{7}[A-Z]{1}')}|
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(regexify '[a-z]{6}[A-Z]{8}')}|
