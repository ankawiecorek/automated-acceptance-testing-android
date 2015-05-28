Feature: Android login features
In order to access the Solid Android application
as a normal user 
I want to enter my username and password

@login_android
Scenario: Successfully log in on Android app 
Given The app is running
And I wait for 10 seconds
And I set proper service url
And I wait for 10 seconds
And I am about to login
When I enter valid credentials
And I click on login button
And I wait for no progress bar
Then I should be logged in

@login_android
Scenario: Invalid credentials set causes displaying error
Given The app is running
And I wait for 10 seconds
And I am about to login
When I enter invalid credentials
And I click on login button
Then I should see login error

@login_android
Scenario: Problem with connection caused that is impossible to login
Given The app is running
And I wait for 10 seconds
And I am about to login
When I enter invalid credentials
And I click on login button
Then I should see connection error

@log_out
Scenario: Log out from application
Given The app is running
And I wait for 10 seconds
And I am log in as testbruker
And I should be logged in
When I touch main menu
And I select log out option
Then I should be logged out 
And I should see login screen

@reload_data
Scenario: Reload data in mobile application
Given The app is running
And I wait for 10 seconds
And I am log in as testbruker
And I should be logged in
When I touch main menu
And I select reload data option
Then I wait when data will be ready
And I can select any from four available options





