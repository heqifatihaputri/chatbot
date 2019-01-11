class Suggestion < ActiveRecord::Base
	has_and_belongs_to_many :answers

	# def self.search
	# 	Suggestion.where(["description LIKE?", "%#{params[:search]}%"])
	# end
	
	# scope :search, -> (search) { where("description LIKE?", "#{search}%")}

	# after_create :create_answers_suggestion

	def self.search_data(search_suggestion)
		suggestions = Suggestion.all
		search_array = search_suggestion.to_s.downcase.split(" ").map{|search| search.gsub(/[^0-9A-Za-z]/, '')} 
		result = []

		suggestions.each do |suggestion|
		i = 0
		n = 0
			unless search_array.nil?
				search_array.each do |search|
					# debugger
					if search.present? 
						if suggestion.description.include?(search)
							result << suggestion
						else
							# t+= 1
						end
					end
						i+= 1
				end
			else
				break
			end
			# t+= 1
		end
		# debugger
		result.uniq!
		if result.present?
			answer = result.first.answers.sample.description
		else
			answer = "Oh.."
		end
			return answer
	end

	def create_answers_suggestion
		# AnswersSuggestion.create(suggestion_id: id, answer_id: )
	end
end
