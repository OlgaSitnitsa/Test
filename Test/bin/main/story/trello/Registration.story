Description: Trello Sign up scenario;


Scenario: Open Trello main page
Given I am on a page with the URL 'http://trello.com/'
Then the page title is equal to 'Trello'

Scenario: New User Sign Up
Meta:
     @layout desctop
Given I am on the main application page
When I find >= '1' elements by By.xpath(//div[@class='d-none d-md-block col-md-7 pr-md-2']/input) and for each element do 
|step|
|When I change context to an element 'By.xpath(//div[@class='d-none d-md-block col-md-7 pr-md-2']/input)'|
|When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`|
|When I initialize the STORY variable `testUserPass` with value `#{generate(regexify '[abcdefghijk]{10}')}`|
|When I initialize the STORY variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`|
|When I enter `${testUserEmail}@gmail.com` in field located 'By.xpath(//div[@class='d-none d-md-block col-md-7 pr-md-2']/input)'|
|When I click on an element 'By.xpath(//button[text()='Sign up-it's free!'])'|
|When I enter '${testUserEmail}' in field located 'By.xpath(//input[@id='displayName'])'|
|When I enter '${testUserPass}' in field located 'By.xpath(//input[@id='password'])'|
|When I click on an element 'By.xpath(//span[text()='Sign up'])'|