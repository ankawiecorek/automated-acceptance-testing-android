And /^I touch attach picture icon for project$/ do 
	@screen.picture_screen.moveToProjectPicture
end

And /^I touch take photo icon$/ do
	@screen.picture_screen.openCamera
end

And /^I touch picture icon for location$/ do
	@screen.picture_screen.touchLocationIconPicture
end

And /^Picture is visible in the list$/ do
	@screen.picture_screen.checkIfPictureIsAttached
end

And /^I can see name of picture$/ do
	@screen.picture_screen.showNameOfPicture
end

And /^I can see size of picture$/ do
	@screen.picture_screen.showSizeOfPicture
end

And /^I touch existing picture icon$/ do
	@screen.picture_screen.attachExistingPicture
end

And /^I choose picture from camera directory under device$/ do
	@screen.picture_screen.attachExistingPictureCameraShell
end

And /^I choose picture from Solid directory under device$/ do
	@screen.picture_screen.attachExistingPictureSolidShell
end

And /^I touch (\d+) picture icon next to location$/ do |indexIconLocation|
	@screen.picture_screen.locationItemPicture(indexIconLocation)
end

When /^I remove taken picture$/ do
	@screen.picture_screen.removePictureFromList
end

When /^Camera is enabled and I take a picture$/ do
	@screen.picture_screen.takePicture
end

Then /^I upload picture$/ do
	@screen.picture_screen.uploadPicture
end 

Then /^Picture is removed from attach pictures view$/ do
	@screen.picture_screen.checkIfPictureIsRemoved
end

