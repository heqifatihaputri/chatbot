class RoomsController < ApplicationController
	def index
		# @search = Suggestion.where(["description LIKE?", "%#{params[:search]}%"])	
		# debugger
		# @suggestions = Suggestion.search(params[:search]) if params[:search].present?
		@search_suggestion = params[:search]
		@suggestions = Suggestion.search_data(@search_suggestion)
	end
end
