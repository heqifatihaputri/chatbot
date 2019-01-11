# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# suggestions = Suggestion.create([{ description: 'siapa nama kamu ?'}, {'berapa umur kamu ?'}, {'kamu tinggal dimana ?'}])
# answers = Answer.create([{description: 'Nama aku Lola'}, {description: 'Nama aku Heqi'}, {description: 'Umur aku 19'}, {description: 'Cimahi'}, {description: 'Bandung'}])

Suggestion.destroy_all
Answer.destroy_all

# suggestions_list = [
#   "siapa nama ?",
#   "tinggal dimana ?",
#   "warna",
#   "ukuran",
#   "makanan",
#   "minuman"
# ]

# suggestions = suggestions_list.each do |description|
#   Suggestion.create( description: description )
# end

# answers_list = [
#   "Nama aku Heqi",
#   "Nama aku Hena",
#   "Cimahi",
#   "Bandung"
#   "Biru",
#   "Kuning",
#   "Besar",
#   "Sangat kecil",
#   "Aku suka pizza"
# ] 

# answers = answers_list.each do |description|
#   Answer.create( description: description )
# end

# Suggestion.first.answers << Answer.first
# Suggestion.last.answers << Answer.last

suggestions = [{description: "siapa nama ?", answers: [{description: "Nama aku Heqi"}, {description: "Nama aku Hena"}]}, 
			{description: "tinggal dimana ?", answers: [{description: "Cimahi"}, {description: "Bandung"}]},
			{description: "warna", answers: [{description: "Aku suka warna biru"}, {description: "Itu warna nya kuning"}]},
			{description: "makanan", answers: [{description: "Mangga buah yang paling enak"}, {description: "Makanan kesukaan aku ayam goreng"}]},
			{description: "sedih", answers: [{description: "Kenapa kamu sedih?"}, {description: "Aku juga sedih"}]},
			{description: "cuaca", answers: [{description: "dingiiiin"}, {description: "Kayanya sekarang musim kemarau"}]},
			{description: "kabar", answers: [{description: "Kabar aku baik, kalau kamu?"}, {description: "Baik kok"}]},
			{description: "umur", answers: [{description: "Umur aku 19 tahun"}]},
			{description: "usia", answers: [{description: "Umur aku 19 tahun"}]}]


suggestions.each do |suggestion|
	sg = Suggestion.create(description: suggestion[:description])
	suggestion[:answers].each do |answer|
	# debugger
		as = Answer.create(description: answer[:description])
	# debugger
	sg.answers << as
	end
end
