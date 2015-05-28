# Screen Object Model
Calabash API provides Object Oriented Model similar to Selenium, Watir or Capybara. This Model helps to decsribing elements on a screen in easy and readable manner.
It also keep it DRY. The benefits of this solution is abstract point of application and reuse.

Page Object models a single screen in the application. For example "Login Screen" describe username, password text fieds and "Log in" button.

## Running
installed Ruby 1.9 or above
 
    bundle install
    calabash-android run <apk_name>
