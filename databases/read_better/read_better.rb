#OPERATION READ BETTER

#require gems
require 'sqlite3'

#create SQLite3 database
db = SQLite3::Database.new("reading_suggestions.db")
db.results_as_hash = true

#fancy string delimiters
create_table = <<-SQL
	CREATE TABLE IF NOT EXISTS reading_suggestions(
	id INTEGER PRIMARY KEY,
	title VARCHAR(255),
	author VARCHAR(255),
	type VARCHAR(255)
	)
SQL

#create a table (if it's not there already)
#add books
db.execute(create_table)
db.execute("INSERT INTO reading_suggestions (title, author, type) VALUES 
	('The Vegetarian', 'Han Kang', 'fiction'),
	('The Argonauts', 'Maggie Nelson', 'fiction'),
	('White Teeth', 'Zadie Smith', 'fiction'),
	('Citizen', 'Claudia Rankine', 'fiction'),
	('All the Single Ladies', 'Anne Traister', 'non fiction'),
	('Backlash', 'Susan Faludi', 'non fiction'),
	('Behind the Beautiful Forevers', 'Katherine Boo', 'non fiction'),
	('The Soul of an Octopus', 'Sy Montgomery', 'non fiction')
	")

#definte a method that will automatically generate a suggestion, based on whether user likes fiction or non fiction
def create_suggestion(db)
	puts "Do you like fiction or non fiction?"
	answer = gets.chomp.to_s
	#select a random row from the table where type=answer
	suggestions = db.execute("SELECT title, author FROM reading_suggestions WHERE type='#{answer}' ORDER BY RANDOM() LIMIT 1")
	#return suggestion in a string, filling in title and author
	# suggestions = db.execute("SELECT * FROM reading_suggestions")
	suggestions.each do |suggestion|
	puts "You should read #{suggestion['title']} by #{suggestion['author']}!"
	end 
end

create_suggestion(db)

# create_suggestion(db, "fiction")

# #explore ORM by retrieving data
# suggestions = db.execute("SELECT * FROM reading_suggestions")
# suggestions.each do |suggestion|
# 	puts "You should read #{suggestion['title']} by #{suggestion['author']}!"
# end 

