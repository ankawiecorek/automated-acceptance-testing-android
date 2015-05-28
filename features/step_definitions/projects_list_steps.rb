And /^I scroll down until I see "([^\"]*)"$/ do |what|
	@screen.projects_list_screen.scroll_down_until_see(what)
end

And /^I scroll up until I see "([^\"]*)"$/ do |what|
	@screen.projects_list_screen.scroll_up_until_see(what)
end

And /^I synchronize project$/ do
	@screen.projects_list_screen.synchronizeProject
end

And /^I tap and hold "(.+)"$/ do |what|
	@screen.projects_list_screen.tapAndHold(what)
end

When /^I add project to favourite$/ do
	@screen.projects_list_screen.setAsFavourite
end

Then /^Project will synchronize on next login$/ do
	@screen.projects_list_screen.checkSynchronizeInfo
end

Then /^I should see again favourite icon$/ do
	@screen.projects_list_screen.favouriteVisible
end