class WelcomeScreen < BaseClass

	element(:welcome_trait)		{ 'Hello, test-pweb!' }
	element(:main_menu)			{ 'More options' }
	element(:log_out)			{ 'Log out' }
	element(:reload_data)		{ 'Reload data' }
	element(:element_enabled)	{ 'true' }
	element(:element_disbled)	{ 'false' }
	element(:button)			{ 'button' }
	element(:location)			{ 'locationItemName' }
	element(:home_icon)			{ 'Navigate home' }

	value(:await_welcome)		{ wait_for_element(welcome_trait) }

	action(:touch_main_menu)	{ tap_on_element_by_content_description(main_menu) }
	action(:touch_log_out)		{ tap_on_text(log_out) }
	action(:touch_reload_data)	{ tap_on_text(reload_data) }
	action(:navigate_home)		{ tap_on_element_by_content_description(home_icon) }

	def mapNameToElement(what)
  		case what
  			when "Projects"
  				'dashboardProjects'

  			when "Checklists"
  				'dashboardChecklists'

  			when "Sync Jobs"
  				'dashboardJobs'

  			when "Settings"
  				'dashboardSettins'

  			when "Projects List"
				'Your projects'

			when "Documents"
				'Documents'

			when "Checklists View"
				'Checklists'

			when "Settings Android"
				'Settings'

			when "Synchronization Jobs"
				'Synchronization jobs'

			when "Attach pictures"
				'Attach pictures'

			when "2727 Bergfrueveien 2A" 
				'2727 Bergfrueveien 2A'

			when "Bergfrueveien 2A" 
				'Bergfrueveien 2A'

			when "Betongarbeider"
  				'Betongarbeider'

  			when "2795 Brevik skole" 
  				'2795 Brevik skole'

  			when "Brevik skole" 
  				'Brevik skole'

  			when "Fundament/banketter"
      			'Fundament/banketter.'

      		when "Deviation message"
      			'Deviation message'

      		when "remove from favourites"
      			'Remove from favourites'

      		when "language section"
      			'Projects language'
  		
  				else
  					fail("Unknown name '#{what}' when mapping to element on screen!")
  				end
  	end

	def welcomeScreen
		begin
			await_welcome
			true
		rescue Exception => e
			false
			puts("You are not on Welcome Screen!")
		end		
	end

	def touchMainMenu
		touch_main_menu
	end

	def logOut
		touch_log_out
	end

	def reloadData
		touch_reload_data
	end

	def elementEnabled
		enabled?(button, element_enabled)
	end

	def elementDisabled
		enabled?(button, element_disbled)
	end

	def navigateHome
		navigate_home
	end

	def touchIcon(what)
		element = mapNameToElement(what)
		wait_for_id(element)
		tap_on_element_id(element)
	end

	def touchView(view)
		element = mapNameToElement(view)
		wait_for_trait(element)
		tap_on_text(element)
	end

	def seeScreenTrait(what)
		screen = mapNameToElement(what)
		wait_for_element(screen)
	end

	def seeView(view)
		screen = mapNameToElement(view)
		view_exists?(screen)
	end

	def touchLocation(locationName)
		locationMarker = "* id:'#{location}' text:'#{locationName}'"
		touch(locationMarker)
	end

	def tapAndHoldLocation(locationName)
		locationMarker = "* id:'#{location}' text:'#{locationName}'"
		tap_and_hold(locationMarker)
	end

end