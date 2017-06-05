class WelcomeController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:update]
	def index
	end 
end 