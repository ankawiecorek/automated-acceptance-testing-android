class PicturesScreen < BaseClass
	require_relative '../../lib/keyevents'

	element(:picture_in_project)		{ 'projectListContextMenuPicture' }
	element(:attach_picture_icon)		{ 'attachPictureMenuTakePhoto' }
	element(:upload_picture_icon)		{ 'locationPicturesUploadMenuItem' }
	element(:picture_view_location)		{ 'locationListContextMenuPicture' }
	element(:picture_location)			{ 'locationItemTakeAPicture' }
	element(:remove_pictur_icon)		{ 'pictureListItemRemove' }
	element(:picture_on_the_list)		{ 'pictureHomeContainer' }
	element(:picture_name)				{ 'pictureListItemName' }
	element(:picture_size)				{ 'pictureListItemSize' }
	element(:attach_existing_picture)	{ 'Existing picture' }

	value(:wait_10_seconds)				{ wait_seconds(10) }
	value(:wait_5_seconds)				{ wait_seconds(5) }

	action(:touch_picture)				{ tap_on_element_id(picture_in_project) }
	action(:attach_picture)				{ tap_on_element_id(attach_picture_icon) }
	action(:upload_picture)				{ tap_on_element_id(upload_picture_icon) }
	action(:remove_picture)				{ tap_on_element_id(remove_pictur_icon) }
	action(:attach_existing)			{ tap_on_text(attach_existing_picture) }
	action(:attach_picture_location)	{ tap_on_element_id(picture_view_location) }

	def moveToProjectPicture
		touch_picture
	end

	def openCamera
		attach_picture
	end

	def uploadPicture
		upload_picture
	end

	def removePictureFromList
		remove_picture
	end

	def attachExistingPicture
		attach_existing
	end

	def touchLocationIconPicture
		attach_picture_location
	end

	def checkIfPictureIsAttached
		begin
			element_exists("* id:'#{picture_on_the_list}'")
			true
		rescue Exception => e
			false
		end
	end

	def checkIfPictureIsRemoved
		begin
			element_exists("* id:'#{picture_on_the_list}'")
			false
		rescue Exception => e
			true
		end
	end

	def showNameOfPicture
		pictureName = query("* id:'#{picture_name}'", :text)
		puts(pictureName)
	end

	def showSizeOfPicture
		pictureSize = query("* id:'#{picture_size}'", :text)
		puts(pictureSize)
	end

	def locationItemPicture(indexIcon)
		indexIcon = indexIcon.to_s 
		pictureIcon = "* id:'#{picture_location}' index:#{indexIcon}"
		touch(pictureIcon)	
	end

	def takePicture
		# series of command which take a picture from handhold device
		# wait_10_seconds
		# keyevent('27') # take a picture 
		# wait_5_seconds 
		# keyevent('20') # preselect save button
		# wait_5_seconds
		# keyevent('22') # preselect save button
		# wait_5_seconds
		# keyevent('23') # click on save button
		# wait_10_seconds

		# series of command which take a picture under emulator
		wait_10_seconds
		keyevent('27') # take a pic
		wait_5_seconds
		keyevent('22') # focus on save
		wait_5_seconds
		keyevent('22') # focus on save
		wait_5_seconds
		keyevent('22') # focus on save
		wait_5_seconds
		keyevent('23') # click on save
		wait_5_seconds
	end

	def attachExistingPictureCameraShell
		# select pictures from Camera under device
		wait_10_seconds
		keyevent('20') # cancel
		wait_5_seconds
		keyevent('20') # tab on camera
		wait_5_seconds
		keyevent('23') # select camera
		wait_5_seconds

		# select existing picture 
		keyevent('20') # preselect camera
		wait_5_seconds 
		keyevent('22') # tab on picture
		wait_5_seconds 
		keyevent('23') # select picture
		wait_10_seconds
	end

	def attachExistingPictureSolidShell
		# select pictures from Solid dir under device
		wait_10_seconds
		keyevent('20') # cancel
		wait_5_seconds
		keyevent('20') # tab on camera
		wait_5_seconds 
		keyevent('20') # select camera
		wait_5_seconds 
		keyevent('22') # move right
		wait_5_seconds 
		keyevent('23') # tab on camera

		# select existing picture 
		wait_10_seconds
		keyevent('20') # select Solid
		wait_5_seconds
		keyevent('22') # move right
		wait_5_seconds 
		keyevent('20') # move down
		wait_5_seconds 
		keyevent('20') # move down
		wait_5_seconds 
		keyevent('20') # move down
		wait_5_seconds 
		keyevent('23') # select picture
		wait_10_seconds
	end

end