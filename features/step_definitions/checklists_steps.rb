And /^I touch checklist icon in location$/ do 
	@screen.checklist_screen.moveToChecklistInLocation
end

And /^I touch element on screen with position (\d+) and (\d+)$/ do |xPos, yPos|
	@screen.checklist_screen.selectItemByPosition(xPos, yPos)
end

Then /^I upload checklist$/ do
	@screen.checklist_screen.uploadChecklist
end

When /^I change state on first available option$/ do
	@screen.checklist_screen.selectFirstOptionFromSpinner
end

And /^I see following options$/ do
	@screen.checklist_screen.listOptions
end

And /^I enter title with fail CP$/ do
	@screen.checklist_screen.enterFailCPTitle
end

And /^I save deviation$/ do
	@screen.checklist_screen.saveFailedCP
end

And /^I add comment to attached picture$/ do
	@screen.checklist_screen.commentPicture
end

Then /^I remove checklist draft$/ do
	@screen.checklist_screen.removeDraft
end

And /^I move into checklist view$/ do
	steps %Q{
		And I touch the "Projects" 
		And I should be on "Projects List"
		And I wait for 2 seconds
		And I scroll down until I see "2727 Bergfrueveien 2A" 
		And I touch the "2727 Bergfrueveien 2A" view
		And I wait for 2 seconds
		And I touch the "Bergfrueveien 2A" location
		And I wait for 2 seconds 
		And I touch the "Bygg A" location
		And I wait for 2 seconds
		And I tap and hold "1. etg" 	
		And I touch checklist icon in location
		And I wait for 2 seconds
		And I tap on discipline spinner
		And I wait for 5 seconds
		And I touch the "Betongarbeider" view
		And I wait for 5 seconds
		And I tap on activity spinner
		And I wait for 2 seconds
		And I select first available option
		And I wait for 2 seconds
		And I touch the "Fundament/banketter" view
		And I wait for 2 seconds
		}
end

And /^I fill checklist$/ do
	steps %Q{
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
	}
end

And /^I select checklist$/ do
	@screen.checklist_screen.selectFirstChecklist
end

And /^I tap on discipline spinner$/ do 
	@screen.checklist_screen.tapOnDiscipline
end

And /^I tap on activity spinner$/ do 
	@screen.checklist_screen.tapOnActivity
end

And /^I tap on first checkpoint$/ do
	@screen.checklist_screen.tapOnFirstCP
end

Then /^I tap and hold first checkpoint$/ do
	@screen.checklist_screen.touchFirstCP
end

And /^I click the (\d+) item on the list and I approve it$/ do |row|
	@screen.checklist_screen.selectItemFromChecklistApprove(row)
end

And /^I click the (\d+) item on the list and I ignore it$/ do |row|
	@screen.checklist_screen.selectItemFromChecklistIgnore(row)
end

And /^I select first available option$/ do
	@screen.checklist_screen.firstAvailableActivity
end