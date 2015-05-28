class ChecklistScreen < BaseClass
	require_relative 'WelcomeScreen'

	element(:checklist_in_location)		{ 'locationListContextMenuActivities' }
	element(:checklist_upload)			{ 'checklistHomeMenuUpload' }
	element(:ok_button)					{ 'OK' }
	element(:fail_cp_deviation_title)	{ 'deviationPageTitle' } # dm_title
	element(:remove_draft)				{ 'Remove checklist draft' }
	element(:first_checklist_on_list)	{ 'checklistItemName' }
	element(:checkpoint)				{ 'checkpointItemName' }
	element(:element_from_spinner)		{ 'TextView' }
	element(:save_deviation)			{ 'deviationMessageHomeMenuSave' }
	element(:approve_option)			{ 'Approve' }
	element(:ignore_option)				{ 'Ignore' }
	element(:fail_option)				{ 'Fail' }
	element(:first_item_from_spinner)	{ 'text1' }
	element(:discipline_spinner)		{ 'disciplinePickerDiscipline' }
	element(:activity_spinner)			{ 'disciplinePickerActivity' }			
	element(:picture_comment)			{ 'pictureHomeComment' }

	value(:wait_2_seconds)				{ wait_seconds(2) }
	value(:fail_cp_title)				{ 'Fail CP - Android automation' }
	value(:comment)						{ 'Comment TEST - Checklist' }

	action(:move_to_checklist)			{ tap_on_element_id(checklist_in_location) }
	action(:upload_checklist)			{ tap_on_element_id(checklist_upload) }
	action(:confirm_upload)				{ tap_on_text(ok_button) }
	action(:touch_element_from_spinner)	{ tap_on_element(element_from_spinner) }
	action(:touch_save_deviation)		{ tap_on_element_id(save_deviation) }
	action(:remove_draft)				{ tap_on_text(remove_draft) }
	action(:touch_first_checklist)		{ tap_on_element_id(first_checklist_on_list) }
	action(:touch_discipline_spinner)	{ tap_on_element_id(discipline_spinner) }
	action(:touch_activity_spinner)		{ tap_on_element_id(activity_spinner) }
	
	time = Time.now.strftime("%d/%m/%Y %H:%M")

	def moveToChecklistInLocation
		move_to_checklist
	end

	def uploadChecklist
		upload_checklist
		wait_2_seconds
		confirm_upload
	end

	def enterFailCPTitle
		cp_title = fail_cp_title + '#{time}'
		query(fail_cp_deviation_title, :setText => cp_title )
	end

	def commentPicture
		time = Time.now.strftime("%d/%m/%Y %H:%M")
		comment_pic = "#{comment} #{time}"
		keyboard_enter_text_by_id(picture_comment, comment_pic)
	end

	def saveFailedCP
		touch_save_deviation
	end

	def removeDraft
		touch_main_menu
		wait_2_seconds
		remove_draft
	end

	def selectFirstOptionFromSpinner
		touch_element_from_spinner
	end
		
	def selectFirstChecklist
		touch_first_checklist
	end

	def selectItemFromChecklistApprove(row)
		ifCPInvisibleOnList(row)
		wait_2_seconds
		touch("#{element_from_spinner} text:'#{approve_option}'")
	end

	def selectItemFromChecklistIgnore(row)
		ifCPInvisibleOnList(row)
		wait_2_seconds
		touch("#{element_from_spinner} text:'#{ignore_option}'")
	end

	def ifCPInvisibleOnList(row)
		indexCell = row.to_s 
		checkpoint_pos = query("* id:'#{checkpoint}' index:#{indexCell}")
			while checkpoint_pos.empty?
       			performAction('scroll_down')
       			wait_2_seconds
       			indexCell = indexCell.to_i - 3											# indicates on proper index cell minus 3 because index of cell is not constant, it changes while scrolling
       			indexCell = indexCell.to_s
       			checkpoint_pos = query("* id:'#{checkpoint}' index:#{indexCell}")
  			end 		
		touch(checkpoint_pos)
	end

	def selectItemByPosition(xPos, yPos)
		touchCoordinates(xPos, yPos)
	end

	def listOptions
		display_list
	end

	def touchFirstCP
		checkpoint_icon = query("* id:'#{checkpoint}'")
		long_press(checkpoint_icon)		
	end

	def tapOnFirstCP
		checkpoint_icon = query("* id:'#{checkpoint}'")
		touch(checkpoint_icon)
	end

	def firstAvailableActivity
		tap_on_element_id(first_item_from_spinner)
	end

	def tapOnDiscipline
		touch_discipline_spinner
	end

	def tapOnActivity
		touch_activity_spinner
	end

end