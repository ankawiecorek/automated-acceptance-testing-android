require 'calabash-android/management/adb'
require 'calabash-android/operations'
require_relative '../../lib/keyevents'


state_of_installation = {
	:installed => false
}


Before do |scenario|
  keyevent('82')
  scenario_tags = scenario.source_tag_names

  if scenario_tags.include?('@reinstall') || !state_of_installation[:installed]
  	reinstall_apps()
  	install_app(ENV['TEST_APP_PATH'])
  	install_app(ENV['APP_PATH'])
  	state_of_installation[:installed] = true
  end

  start_test_server_in_background 
end

After do |scenario|

  if scenario.failed?
    screenshot_embed
  end

  shutdown_test_server
end



