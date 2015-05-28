require_relative '../../lib/BaseClass'

class SolidApp < BaseClass

	def login_screen
		@login_screen ||= LoginScreen.new(self)
	end

	def welcome_screen
		@welcome_screen ||= WelcomeScreen.new(self)
    end

	def projects_list_screen
  		@projects_list_screen ||= ProjectsListScreen.new(self)  		
	end

	def deviation_screen
  		@deviation_screen ||= DeviationScreen.new(self)
	end

	def checklist_screen
  		@checklist_screen ||= ChecklistScreen.new(self)  		
	end

	def picture_screen
  		@picture_screen ||= PicturesScreen.new(self)
	end

	def severity_description_view
		@severity_description_view ||= SeverityDescriptionView.new(self)  		
	end

	def synchronization_screen
  		@synchronization_screen ||= SyncJobsScreen.new(self)
	end

	def documents_screen
		@documents_screen ||= DocumentsScreen.new(self)
	end

	def language_screen
		@language_screen ||= LanguageScreen.new(self)
	end

	def location_screen
		@location_screen ||= LocationScreen.new(self)
	end

	def compare_screen
		@compare_screen ||= ScreenComparison.new(self)
	end

end