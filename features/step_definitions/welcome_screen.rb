Then /^I should be logged in$/ do
	@screen.welcome_screen.welcomeScreen
end

When /^I touch main menu$/ do
	@screen.welcome_screen.touchMainMenu
end

And /^I select log out option$/ do
	@screen.welcome_screen.logOut
end

And /^I select reload data option$/ do
	@screen.welcome_screen.reloadData
end

Then /^I wait when data will be ready$/ do
	@screen.welcome_screen.elementDisabled
end

And /^I can select any from four available options$/ do
	@screen.welcome_screen.elementEnabled
end

And /I touch the "(.+)" view$/ do |view|
	@screen.welcome_screen.touchView(view)
end

And /^I touch the "([^\"]*)" location$/ do |locationName|
	@screen.welcome_screen.touchLocation(locationName)
end

And /^I tap and hold "([^\"]*)" location$/ do |locationName|
	@screen.welcome_screen.tapAndHoldLocation(locationName)
end

And /^I navigate to welcome screen$/ do
	@screen.welcome_screen.navigateHome
end

When /^I touch the "(.+)"$/ do |what|
	@screen.welcome_screen.touchIcon(what)
end

Then /^I should be on "(.+)"$/ do |screen|
	@screen.welcome_screen.seeScreenTrait(screen)
end

Then /I should be on "(.+)" view$/ do |view|
	@screen.welcome_screen.seeView(view)
end


