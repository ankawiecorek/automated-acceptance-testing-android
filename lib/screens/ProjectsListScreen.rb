class ProjectsListScreen < BaseClass

	element(:synchronize_button)		{ 'projectListContextMenuSynchronizeNow' }
	element(:favourite_icon)			{ 'projectListContextMenuFavouriteAdd' }
	element(:text_synchronize)			{ 'Will synchronize on next login.' }
	element(:info_synchronize)			{ 'projectItemSyncInfo' }

	value(:wait_50_seconds)				{ wait_seconds(50) }

	action(:touch_synchronize)			{ tap_on_element_id(synchronize_button) }
	action(:touch_favourite)			{ tap_on_element_id(favourite_icon) }

	def synchronizeProject
		touch_synchronize
		wait_50_seconds
	end

	def scrollToProject(projectName)
		scroll_down_until_see(projectName)
	end

	def scrollToTop(projectName)
		scroll_up_until_see(projectName)
	end

	def tapAndHold(what)
		tap_and_hold(what)
	end

	def setAsFavourite
		touch_favourite
	end

	def checkSynchronizeInfo
    	element_exists("* text:'#{text_synchronize}' id:'#{info_synchronize}'")
  	end

  	def favouriteVisible
    	element_exists(favourite_icon)
  	end
	
end