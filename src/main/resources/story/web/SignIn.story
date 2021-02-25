Scenario: Sign In
!-- GivenStories: story/web/SignUp.story
Given I am on a page with the URL 'https://www.trello.com/'
When I click on element located `By.xpath(//a[text()="Log in"])`
When I enter `orlovaanna115@gmail.com` in field located `By.xpath(//input[@placeholder="Enter email"])`
When I click on element located `By.id(login)`
When I enter `ra18in053660999` in field located `By.id(password)`
When I click on element located `By.xpath(//span[text()="Log in"])`
When I wait until the page title contains the text 'Boards'
When I click on element located `By.xpath(//button[@aria-label="Open Member Menu"])`
Then the text 'orlovaanna115@gmail.com' exists

When I click on element located `By.xpath(//span[text()="Getting Started"])`
When I compare against baseline with `getting-started`

When I click on element located `By.xpath(//span[text()="Highlights"])`
When I compare against baseline with `highlights`

When I click on element located `By.xpath(//a[@data-test-id="home-team-members-tab"])`
When I compare against baseline with `members`

When I click on element located `By.xpath(//a[text()="Settings"])`
When I compare against baseline with `settings`

When I click on element located `By.xpath(//a[@data-tab="businessClass"])`
When I compare against baseline with `upgrade-team`
