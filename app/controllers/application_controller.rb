class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  	layout 'application'
	before_action :authorize

	def current_moderator
		@moderator ||= Moderator.find(session[:current_moderator_id]) if session[:current_moderator_id]
	end

	def authorize
		unless current_moderator
			unless request_uri = "/formlets/new"
				redirect_to login_url
			end
			
		end
	end

	def to_bool string
		ActiveRecord::Type::Boolean.new.type_cast_from_user(string)
	end	
end
