Feature: Picture Android activity
In order to upload picture under PW2 system
as a normal user
I want to be able to take and upload pictures from mobile device

@picture_activity
Scenario: Go to attaching picture view
Given The app is running
And I set proper service url
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
When I touch the "Projects" 
And I should be on "Projects List"
And I scroll down until I see "2727 Bergfrueveien 2A" 
And I tap and hold "2727 Bergfrueveien 2A" 
And I synchronize project
And I wait for 2 seconds
And I scroll up until I see "2727 Bergfrueveien 2A" 
And I wait for 2 seconds
And I tap and hold "2727 Bergfrueveien 2A" 
And I touch attach picture icon for project
Then I should be on "Attach pictures"
And I wait for 2 seconds


@picture_activity
Scenario: Uploading picture to project
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
And I touch the "Projects" 
And I should be on "Projects List"
And I tap and hold "2727 Bergfrueveien 2A" 
And I touch attach picture icon for project
And I should be on "Attach pictures" view
And I wait for 2 seconds
And I touch take photo icon
And I wait for 5 seconds
When Camera is enabled and I take a picture
And I wait for 5 seconds
Then I upload picture 
And I wait for 10 seconds

@picture_activity
Scenario: Uploading picture to location under project
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
And I touch the "Projects" 
And I should be on "Projects List"
And I touch the "2727 Bergfrueveien 2A" view
And I wait for 2 seconds
And I touch the "Bergfrueveien 2A" location
And I wait for 2 seconds 
And I tap and hold "Bygg A" 
And I wait for 2 seconds
And I touch picture icon for location
And I wait for 3 seconds
And I touch take photo icon
And I wait for 3 seconds
When Camera is enabled and I take a picture
And I wait for 5 seconds
Then I upload picture 
And I wait for 10 seconds

@picture_activity
Scenario: Removing attached picture under location
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
And I touch the "Projects" 
And I should be on "Projects List"
And I touch the "2727 Bergfrueveien 2A" view
And I wait for 2 seconds
And I touch the "Bergfrueveien 2A" location
And I wait for 2 seconds 
And I tap and hold "Bygg A" 
And I wait for 2 seconds
And I touch picture icon for location
And I wait for 3 seconds
And I touch take photo icon
And I wait for 3 seconds
And Camera is enabled and I take a picture
And I wait for 5 seconds
And Picture is visible in the list
When I remove taken picture
Then Picture is removed from attach pictures view
And I wait for 10 seconds

@picture_activity
Scenario: Removing attached picture under location and taking another one
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
And I touch the "Projects" 
And I should be on "Projects List"
And I touch the "2727 Bergfrueveien 2A" view
And I wait for 2 seconds
And I touch the "Bergfrueveien 2A" location
And I wait for 2 seconds 
And I tap and hold "Bygg A" 
And I wait for 2 seconds
And I touch picture icon for location
And I wait for 3 seconds
And I touch take photo icon
And I wait for 3 seconds
And Camera is enabled and I take a picture
And Picture is visible in the list
And I remove taken picture
And Picture is removed from attach pictures view
And I touch take photo icon
And I wait for 3 seconds
When Camera is enabled and I take a picture
And I wait for 5 seconds
Then I upload picture 
And I wait for 10 seconds

@picture_activity
Scenario: Attaching several pictures to location
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
And I touch the "Projects" 
And I should be on "Projects List"
And I touch the "2727 Bergfrueveien 2A" view
And I wait for 2 seconds
And I touch the "Bergfrueveien 2A" location
And I wait for 2 seconds 
And I tap and hold "Bygg A" 
And I wait for 2 seconds
And I touch picture icon for location
And I wait for 3 seconds
And I touch take photo icon
And I wait for 3 seconds
And Camera is enabled and I take a picture
And I wait for 3 seconds
And I touch take photo icon
And I wait for 3 seconds
And Camera is enabled and I take a picture
And I wait for 2 seconds
And Picture is visible in the list
Then I upload picture 
And I wait for 10 seconds

@picture_activity
Scenario: Attaching existing picture to location from Camera directory
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
And I touch the "Projects" 
And I should be on "Projects List"
And I touch the "2727 Bergfrueveien 2A" view
And I wait for 2 seconds
And I touch the "Bergfrueveien 2A" location
And I wait for 2 seconds 
And I tap and hold "Bygg A" 
And I wait for 2 seconds
And I touch picture icon for location
And I wait for 3 seconds
And I touch main menu
And I touch existing picture icon
And I wait for 3 seconds
And I choose picture from camera directory under device
And I wait for 5 seconds
And Picture is visible in the list
And I wait for 3 seconds
Then I upload picture 
And I wait for 10 seconds

@picture_activity
Scenario: Attaching existing picture to location from Solid directory
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I wait for 5 seconds
And I touch the "Projects" 
And I should be on "Projects List"
And I touch the "2727 Bergfrueveien 2A" view
And I wait for 2 seconds
And I touch the "Bergfrueveien 2A" location
And I wait for 2 seconds 
And I tap and hold "Bygg A" 
And I wait for 2 seconds
And I touch picture icon for location
And I wait for 3 seconds
And I touch main menu
And I touch existing picture icon
And I wait for 3 seconds
And I choose picture from Solid directory under device
And I wait for 5 seconds
And Picture is visible in the list
And I wait for 3 seconds
Then I upload picture 
And I wait for 10 seconds