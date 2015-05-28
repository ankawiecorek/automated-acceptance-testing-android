Feature: Welcome screen activity under Android application
As a normal user 
I want to acceess to all modules under Android application
so that I can see Projects, Checklists, Settings and Synchronization Jobs on Welcome Screen

@welcome_screen_activity
Scenario: Displaying list with projects
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
When I touch the "Projects"
Then I should be on "Projects List"

@welcome_screen_activity
Scenario: Displaying Checklists
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
When I touch the "Checklists"
Then I should be on "Checklists View"

@welcome_screen_activity
Scenario: Displaying Settings
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
When I touch the "Settings"
Then I should be on "Settings Android"

@welcome_screen_activity
Scenario: Displaying Synchronization Jobs
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
When I touch the "Sync Jobs"
Then I should be on "Synchronization Jobs"