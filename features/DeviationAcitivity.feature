Feature: Android Projects Activity
As a normal user 
I want to send DM from Android application
so that I can fill DM creation form

@deviation_activity
Scenario: Deviation Message creation form in location
Given The app is running
And I set proper service url
And I wait for 5 seconds
And I am log in as testbruker
And I wait for 10 seconds
And I am on Bergfrueveien 2A
And I wait for 5 seconds
And I touch the "Bergfrueveien 2A" location
And I tap and hold "Bygg A" 
And I wait for 10 seconds
When I touch deviation message icon in location
And I wait for 5 seconds
Then I should be on "Deviation message"

@deviation_activity
Scenario: Deviation Message creation form in project
Given The app is running
And I am log in as testbruker
And I wait for 10 seconds
And I tap Bergfrueveien 2A
And I wait for 5 seconds
When I touch deviation message for project icon
And I wait for 5 seconds
Then I should be on "Deviation message"

@deviation_activity
Scenario: Sending DM for specific project
Given The app is running
And I set proper service url
And I wait for 10 seconds
And I am log in as testbruker
And I wait for 10 seconds
And I tap Bergfrueveien 2A
And I wait for 5 seconds
When I touch deviation message for project icon
And I wait for 5 seconds
And I choose "Kvalitet" from "category field"
And I wait for 5 seconds
And I choose "Produktfeil" from "direct cause field"
And I wait for 5 seconds
And I choose "Tilvalg" from "underlying cause field" 
And I wait for 5 seconds
And I swipe right
And I wait for 5 seconds
And I tap on discipline spinner
And I wait for 5 seconds
And I touch the "Betongarbeider" view
And I wait for 5 seconds
And I tap on activity spinner
And I wait for 2 seconds
And I select first available option
And I wait for 2 seconds
# And I choose "Betongarbeider" from "discipline field"
# And I wait for 5 seconds
# And I choose first option from "activity field"
And I wait for 5 seconds
And I enter title
And I wait for 5 seconds
Then I upload deviation message
And I wait for 3 seconds

@deviation_activity
Scenario: Sending DM for specific location with attachments
Given The app is running
And I am log in as testbruker
And I wait for 10 seconds
And I tap Bergfrueveien 2A
And I wait for 5 seconds
When I touch deviation message for project icon
And I wait for 2 seconds
And I choose "Kvalitet" from "category field"
And I wait for 2 seconds
And I choose "Produktfeil" from "direct cause field"
And I wait for 2 seconds
And I choose "Tilvalg" from "underlying cause field" 
And I wait for 2 seconds
And I swipe right
And I wait for 2 seconds
And I choose "Betongarbeider" from "discipline field"
And I wait for 2 seconds
And I choose first option from "activity field"
And I wait for 2 seconds
And I enter title
And I wait for 2 seconds
And I check "warranty" flag
And I wait for 2 seconds
And I swipe right
And I wait for 2 seconds
And I choose "C" from "severity field"
And I wait for 2 seconds
And I swipe right
And I wait for 2 seconds
And I choose "All changes" from "alert field"
And I wait for 2 seconds
And I swipe right
And I wait for 2 seconds
And I touch take photo icon
And I wait for 2 seconds
And Camera is enabled and I take a picture
And I wait for 2 seconds
Then I upload deviation message
And I wait for 3 seconds

@common_dm
Scenario: Sending common DM marked as warranty
Given The app is running
And I wait for 2 seconds
And I set proper service url
And I wait for 2 seconds
And I am log in as testbruker
And I wait for 2 seconds
When I touch common deviation message icon
And I wait for 2 seconds
And I should be on "Deviation message"
And I wait for 2 seconds
And I choose "health message" from "category field"
And I wait for 2 seconds
And I choose "Trusler" from "direct cause field"
And I wait for 2 seconds
And I choose "Annet" from "underlying cause field"
And I wait for 2 seconds
And I choose "Personskade" from "consequence field"
And I wait for 2 seconds
And I swipe right
And I wait for 2 seconds
And I enter title for common dm
And I wait for 2 seconds
And I check "warranty" flag
And I wait for 2 seconds
Then I upload deviation message
And I wait for 3 seconds

@common_dm
Scenario: Sending common SHA DM marked as preventive action
Given The app is running
And I am log in as testbruker
When I touch common deviation message icon
And I should be on "Deviation message"
And I choose "health message" from "category field"
And I choose "Trusler" from "direct cause field"
And I choose "Annet" from "underlying cause field"
And I choose "Personskade" from "consequence field"
And I swipe right
And I enter title for common dm
And I wait for 2 seconds
And I check "preventive action" flag
And I wait for 2 seconds
Then I upload deviation message
And I wait for 3 seconds
