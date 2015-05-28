class LoginScreen < BaseClass

	element(:login_trait)			{ 'action_bar_title' }
	element(:username_field)		{ 'loginActivityUsername' }
	element(:password_field)		{ 'loginActivityPassword' }
	element(:login_button)			{ 'loginActivityLoginButton' }
	element(:login_settings)		{ 'loginMenuItemSettings' }
	element(:url_text)				{ 'Service URL' }
	element(:url_service)			{ 'AutoCompleteTextView'}
	element(:test_url)				{ 'https://prosjekt.solid.no/' }
	element(:ok_button)				{ 'OK' }
	element(:cancel)				{ 'Cancel' }
	element(:login_error)			{ 'loginActivityError' }
	element(:home_icon)				{ 'Navigate home' }
	element(:internet_error)		{ 'No internet connection present and selected user has no local data.' }

	value(:await)					{ wait_for_element(login_trait) }
	value(:wait_5_seconds)			{ wait_seconds(5) }
	value(:wait_2_seconds)			{ wait_seconds(2) }
	value(:data_loaded)				{ wait_for_no_progress_bars }
	value(:error_visible)			{ wait_for_element(login_error) }
	value(:login_button_exists)		{ wait_for_element(login_button) }
	value(:login_error_connection)	{ wait_for_element(internet_error) }

	action(:clear_login_field)		{ clear_text_field(username_field) }
	action(:touch_login_button)		{ tap_on_element_id(login_button) }
	action(:touch_login_menu)		{ tap_on_element_id(login_settings) }
	action(:touch_url)				{ tap_on_text(url_text) }
	action(:touch_ok)				{ tap_on_text(ok_button) }
	action(:touch_cancel)			{ tap_on_text(cancel) }
	action(:touch_login_trait)		{ tap_on_element_id(login_trait) }
	action(:navigate_home)			{ tap_on_element_by_content_description(home_icon) }
	
	def checkTestUrl
		wait_5_seconds
		touch_login_menu
		wait_5_seconds
		touch_url
		wait_5_seconds
		if element_exists("* text:'#{test_url}'")
			puts ("Test url is already set!")
			touch_cancel
			navigate_home
			else
				wait_5_seconds
				changeRedirectUrl
				puts ("The test url is succesfully set!")		
		end
		wait_5_seconds	
	end

	def changeRedirectUrl
		wait_5_seconds
		keyboard_enter_text_by_element(url_service, test_url)
		wait_5_seconds
		touch_ok
		wait_5_seconds
		navigate_home
	end

	def login(username, password)
		clear_login_field
		keyboard_enter_text_by_id(username_field, username)
		keyboard_enter_text_by_id(password_field, password)
		wait_5_seconds
	end

	def touchLoginButton
		touch_login_button
		wait_5_seconds
	end

	def projectsCorrectlyFetched
		data_loaded
	end

	def loginError
		error_visible
	end

	def checkIfUserIsLoggedOut
		login_button_exists
	end

	def internetError
		login_error_connection
	end
	
end