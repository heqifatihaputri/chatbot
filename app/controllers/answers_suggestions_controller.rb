class AnswersSuggestionsController < ApplicationController
	def new
		@answers_suggestions = AnswersSugestion.new
	end

	def create
		@answers_suggestion = AnswersSugestion.new(answers_suggestion_params)
	end
end
