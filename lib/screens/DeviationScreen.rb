class DeviationScreen < BaseClass

	element(:dm_icon_in_location)		{ 'locationListContextMenuDeviationMessage' }
	element(:dm_icon_in_project)		{ 'projectListContextMenuDeviationMessage' }
	element(:dm_common)					{ 'mainMenuItemDeviationMessage' }
	element(:dm_upload_button)			{ 'deviationMessageHomeMenuUpload' }
	element(:dm_title)					{ 'deviationPageTitle' }

	value(:dm_project_title)			{ 'Deviation Message - Android automation' }
	value(:dm_common_title)				{ 'Common DM - Android automation '}
		

	action(:touch_dm_icon_in_location)	{ tap_on_element_id(dm_icon_in_location) }
	action(:touch_dm_icon_in_project)	{ tap_on_element_id(dm_icon_in_project) }
	action(:touch_dm_common)			{ tap_on_element_id(dm_common) }
	action(:upload_dm)					{ tap_on_element_id(dm_upload_button) }


	def mapNameToElement(what)
		case what

		when "Kvalitet"
			"TextView text:'Kvalitet'"

		when "health message"
			"TextView text:'SHA (HMS)'"

		when "Produktfeil"
			"TextView text:'Produktfeil'"

		when "Trusler"
			"TextView text:'A11 Trusler om vold'"

		when "A3 Velt"
			"TextView text:'A3 Velt'"

		when "Annet"
			"TextView text:'Annet'"

		when "Tilvalg"
			"TextView text:'Tilvalg'"

		when "Betongarbeider"
			"TextView text:'Betongarbeider'"

		when "Fundamenter"
			"TextView text:'Fundamenter.'"

		when "Personskade"
			"TextView text:'Personskade'"

		when "category field"
			"* id:'deviationPageCategory'"

		when "direct cause field"
			"* id:'deviationPageDirectCause'"

		when "underlying cause field"
			"* id:'deviationPageUnderlyingCause'"

		when "discipline field"
			"* id:'disciplinePickerDiscipline'"

		when "activity field"
			"* id:'disciplinePickerActivity'"

		when "consequence field"
			"* id:'deviationPageConsequence'"

		when "warranty"
			'deviationPageWarranty'

		when "severity field"
			"* id:'deviationPageSeverity'"

		when "A"
			"* text:'A'"

		when "B"
			"* text:'B'"

		when "C"
			"* text:'C'"

		when "preventive action"
			'deviationPagePreventiveAction'

		when "alert field"
			"* id:'deviationPageAlert'"

		when "All changes"
			"* text:'All changes'"

		else
  			fail("Unknown name '#{what}' when mapping to element on screen!")
  		end
		
	end

	def navigateToDMLocation
		touch_dm_icon_in_location
	end

	def navigateToDMProject
		touch_dm_icon_in_project
	end

	def navigateToDMCommon
		touch_dm_common
	end

	def uploadDM
		upload_dm
	end

	def enterDMTitle
		time = Time.now.strftime("%d/%m/%Y %H:%M")
		dm_tit = "#{dm_project_title} #{time}"
		keyboard_enter_text_by_id(dm_title, dm_tit)
		# query("* id:'#{dm_title}'", :setText => dm_tit)
	end

	def enterCommonDMTitle
		time = Time.now.strftime("%d/%m/%Y %H:%M")
		dm_tit = "#{dm_common_title} #{time}"
		query("* id:'#{dm_title}'", :setText => dm_tit)
	end

	def selectItemFromSpinner(what, spinner)
		spinnerName = mapNameToElement(spinner)
		itemName = mapNameToElement(what)
		select_item_from_spinner(itemName, spinnerName)
	end

	def checkFlag(what)
		flag_name = mapNameToElement(what)
		tap_on_element_id(flag_name)
	end
	
	def selectFirstOption(spinnerName)
		spinner = mapNameToElement(spinnerName)
		select_first_available_option_from_spinner(spinner)
	end
end