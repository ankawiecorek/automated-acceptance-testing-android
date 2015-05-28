Given /^The app is running$/ do
	@screen = page(SolidApp)	
end

And /^I set proper service url$/ do
	@screen.login_screen.checkTestUrl
end

And /^I am about to login$/ do
	@screen.login_screen.await
end

When /^I enter valid credentials$/ do 
	@screen.login_screen.login(USERS[:testbruker][:username], USERS[:testbruker][:password])
end

When /^I enter invalid credentials$/ do
	@screen.login_screen.login(USERS[:invalid][:username], USERS[:invalid][:password])
end

And /^I click on login button$/ do	
	@screen.login_screen.touchLoginButton
end

And /^I wait for no progress bar$/ do
	@screen.login_screen.projectsCorrectlyFetched
end

And /^I should see login screen$/ do
	@screen.login_screen.await
end

And /^I am log in as testbruker$/ do 
	steps %Q{
		And I set proper service url
		When I enter valid credentials
		And I click on login button
		Then I should be logged in
	}
end

Then /^I should see login error$/ do	
	@screen.login_screen.loginError
end

Then /^I should be logged out$/ do
	@screen.login_screen.checkIfUserIsLoggedOut
end

Then /^I should see connection error$/ do
	@screen.login_screen.internetError
end

