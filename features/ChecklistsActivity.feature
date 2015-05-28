Feature: Checklists Android activity
In order to upload checklist from Android application
as a normal user
I want to fill checklist form

@checklist_activity
Scenario: Navigate to checklists
Given The app is running
And I set proper service url
And I wait for 10 seconds
And I am log in as testbruker
And I wait for no progress bar
And I touch the "Projects" 
And I should be on "Projects List"
And I scroll down until I see "2727 Bergfrueveien 2A" 
And I tap and hold "2727 Bergfrueveien 2A" 
And I synchronize project
And I wait for 2 seconds
And I scroll up until I see "2727 Bergfrueveien 2A" 
And I wait for 2 seconds
And I touch the "2727 Bergfrueveien 2A" view
And I wait for 2 seconds
And I touch the "Bergfrueveien 2A" location
And I wait for 2 seconds
And I touch the "Bygg A" location
And I wait for 2 seconds
And I tap and hold "1. etg" 
And I touch checklist icon in location
Then I should be on "Checklists View"


@checklist_activity
Scenario: Filling checklists
Given The app is running
And I set proper service url
And I wait for 10 seconds
And I am log in as testbruker
And I wait for no progress bar
And I touch the "Projects" 
And I should be on "Projects List"
And I wait for 2 seconds
And I touch the "2727 Bergfrueveien 2A" view
And I wait for 2 seconds
And I touch the "Bergfrueveien 2A" location
And I wait for 2 seconds 
And I touch the "Bygg A" location
And I wait for 2 seconds
And I tap and hold "1. etg" 
And I wait for 2 seconds
And I touch checklist icon in location
And I wait for 2 seconds
And I tap on discipline spinner
# And I touch element on screen with position 300 and 144
And I wait for 5 seconds
And I touch the "Betongarbeider" view
And I wait for 5 seconds
# And I select element on X 300 and Y 608 
And I tap on activity spinner
And I wait for 2 seconds
# And I touch element on screen with position 300 and 226 
And I select first available option
And I wait for 2 seconds
# And I select element on X 300 and Y 510 
And I touch the "Fundament/banketter" view
And I wait for 2 seconds
And I click the 0 item on the list and I approve it
And I wait for 2 seconds
And I click the 1 item on the list and I approve it
And I wait for 2 seconds
And I click the 2 item on the list and I approve it
And I wait for 2 seconds
And I click the 3 item on the list and I approve it
And I wait for 2 seconds
And I click the 4 item on the list and I approve it
And I wait for 2 seconds
And I click the 5 item on the list and I approve it
And I wait for 2 seconds
And I click the 6 item on the list and I approve it
And I wait for 2 seconds
And I click the 7 item on the list and I ignore it
And I wait for 10 seconds
And I click the 8 item on the list and I ignore it
And I wait for 2 seconds
And I click the 6 item on the list and I ignore it
And I wait for 2 seconds
And I click the 7 item on the list and I ignore it
And I wait for 2 seconds
And I click the 8 item on the list and I ignore it
And I wait for 2 seconds
And I click the 9 item on the list and I ignore it
And I wait for 3 seconds
Then I upload checklist
And I wait for 3 seconds


@checklist_activity
Scenario: Editing checkpoints
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I move into checklist view
And I wait for 3 seconds
And I click the 0 item on the list and I approve it
And I wait for 2 seconds
And I click the 1 item on the list and I approve it
And I wait for 2 seconds
And I click the 2 item on the list and I approve it
And I wait for 2 seconds
And I click the 3 item on the list and I approve it
And I wait for 2 seconds
And I click the 4 item on the list and I approve it
And I wait for 2 seconds
And I click the 5 item on the list and I approve it
And I wait for 2 seconds
And I click the 6 item on the list and I approve it
And I wait for 2 seconds
And I click the 7 item on the list and I ignore it
And I wait for 10 seconds
And I click the 8 item on the list and I ignore it
And I wait for 2 seconds
And I click the 6 item on the list and I ignore it
And I wait for 2 seconds
And I click the 7 item on the list and I ignore it
And I wait for 2 seconds
And I click the 8 item on the list and I ignore it
And I wait for 2 seconds
And I click the 9 item on the list and I ignore it
And I wait for 2 seconds
Then I tap and hold first checkpoint
And I wait for 2 seconds
And I see following options
And I change state on first available option
And I wait for 10 seconds
And I should be on "Deviation message"
And I wait for 2 seconds


@checklist_activity
Scenario: Adding picture to checklist 
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I move into checklist view
And I wait for 3 seconds
And I fill checklist
And I swipe right
And I wait for 5 seconds
And I touch take photo icon
And I wait for 5 seconds
When Camera is enabled and I take a picture
And I wait for 2 seconds
Then I upload checklist
And I wait for 5 seconds


@checklist_activity
Scenario: Adding picture to checkpoint 
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I move into checklist view
And I wait for 3 seconds
And I fill checklist
And I tap on first checkpoint
And I wait for 5 seconds
And I touch take photo icon
And I wait for 5 seconds
When Camera is enabled and I take a picture
And I wait for 2 seconds
And I navigate to welcome screen
And I wait for 5 seconds
And I touch the "Checklists" 
And I should be on "Checklists"
And I select checklist
And I wait for 10 seconds
Then I upload checklist
And I wait for 5 seconds


@checklist_activity
Scenario: Adding picture to failed checkpoint 
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I move into checklist view
And I wait for 3 seconds
And I fill checklist
Then I tap and hold first checkpoint
And I wait for 2 seconds
And I see following options
And I change state on first available option
And I wait for 10 seconds
And I should be on "Deviation message"
And I enter title 
And I swipe right
And I choose "C" from "severity field"
And I swipe right
And I wait for 2 seconds
And I touch take photo icon
And I wait for 5 seconds
When Camera is enabled and I take a picture
And I save deviation
And I wait for 5 seconds
Then I upload checklist
And I wait for 5 seconds


@checklist_activity
Scenario: Adding comment to filled checklists with picture
Given The app is running
And I am log in as testbruker
And I wait for no progress bar
And I move into checklist view
And I wait for 3 seconds
And I fill checklist
And I wait for 3 seconds
And I swipe right
And I wait for 5 seconds
And I touch take photo icon
And I wait for 5 seconds
When Camera is enabled and I take a picture
And I wait for 2 seconds
And I add comment to attached picture
And I wait for 5 seconds
Then I upload checklist
And I wait for 5 seconds
