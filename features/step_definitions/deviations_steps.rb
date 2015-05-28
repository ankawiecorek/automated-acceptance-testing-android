And /^I am on Bergfrueveien 2A$/ do
	steps %Q{
		And I wait for 5 seconds
		When I touch the "Projects" 
		And I wait for 10 seconds
		And I should be on "Projects List"
		And I wait for 10 seconds
		And I scroll down until I see "2727 Bergfrueveien 2A"
		And I wait for 5 seconds
		And I tap and hold "2727 Bergfrueveien 2A" 
		And I wait for 5 seconds
		And I synchronize project
		And I wait for 5 seconds
		And I scroll up until I see "2727 Bergfrueveien 2A" 
		And I wait for 5 seconds
		And I touch the "2727 Bergfrueveien 2A" view
		And I wait for 5 seconds
		Then I should be on "Bergfrueveien 2A" 
	}
end

And /^I tap Bergfrueveien 2A$/ do
	steps %Q{
		When I touch the "Projects" 
		And I wait for 5 seconds
		And I should be on "Projects List"
		And I wait for 5 seconds
		And I tap and hold "2727 Bergfrueveien 2A" 
		And I wait for 5 seconds
	}
end

When /^I touch deviation message icon in location$/ do
	@screen.deviation_screen.navigateToDMLocation
end

When /^I touch deviation message for project icon$/ do
	@screen.deviation_screen.navigateToDMProject
end

When /^I touch common deviation message icon$/ do
	@screen.deviation_screen.navigateToDMCommon
end

And /^I choose "(.+)" from "(.+)"$/ do |what, spinner|
	@screen.deviation_screen.selectItemFromSpinner(what, spinner)
end

And /^I choose first option from "(.+)"$/ do |spinnerName|
	@screen.deviation_screen.selectFirstOption(spinnerName)
end

And /^I enter title$/ do
	@screen.deviation_screen.enterDMTitle
end

And /^I enter title for common dm$/ do
	@screen.deviation_screen.enterCommonDMTitle
end

And /^I check "(.+)" flag$/ do |flag|
	@screen.deviation_screen.checkFlag(flag)
end

Then /^I upload deviation message$/ do
	@screen.deviation_screen.uploadDM
end