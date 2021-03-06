#Chores Scheduler
#require gems for SQL
require 'sqlite3'
#create SQL database
db = SQLite3::Database.new("chores.db")
# db.results_as_hash = true

#create tables for Chores and for family members
create_chores_table = <<-SQL
	CREATE TABLE IF NOT EXISTS chores(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	complete_by_day VARCHAR(255),
	family_id INT,
	FOREIGN KEY (family_id) REFERENCES family(id)
	);
SQL

create_family_table = <<-SQL
	CREATE TABLE IF NOT EXISTS family(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INT
	);
SQL

db.execute(create_chores_table)
db.execute(create_family_table)
#method to add to chores table
def add_chores(db, name, complete_by_day)
	db.execute("INSERT INTO chores (name, complete_by_day, family_id) VALUES (?, ?, 0)", [name, complete_by_day])
end
#method to add to family members
def add_family(db, name, age)
	db.execute("INSERT INTO family (name, age) VALUES (?, ?)", [name, age])
end
#method to update to chores to assign chores to family members
def assign_chores(db, fam_name, chore)
	family = db.execute("SELECT * FROM family")
	name_index = 0
	family.each do |fam|
		if fam[1].eql? fam_name 
			name_index = fam[0]
		end
	end
	db.execute("UPDATE chores SET family_id = ? WHERE name = ?", [name_index, chore])
end
#method to print chores list by day
def print_daily_list(db, day)
	puts "Chores for #{day}"
	print_chores = db.execute("SELECT chores.name, family.name FROM chores, family WHERE chores.complete_by_day = ? AND chores.family_id = family.id", [day])
	print_chores.each do |x|
		puts "#{x[1]} : #{x[0]}"
	end
end
#method to print chores list by person assigned
def print_personal_list(db, name)
	puts "Chores for #{name}"
	print_chores = db.execute("SELECT chores.complete_by_day, chores.name FROM chores, family WHERE family.name = ? AND chores.family_id = family.id", [name])
	print_chores.each do |x|
		puts "#{x[0]} : #{x[1]}"
	end
end

#DRIVER CODE--------------------------------------------------------------------------------------------------------------
# add_chores(db, "Empty Dishwasher", "Wednesday")
# add_family(db, "Josh", 21)
# add_family(db,"Allie", 19)
# p db.execute("SELECT * FROM chores")
# p db.execute("SELECT * FROM family")

assign_chores(db, "Allie", "Empty Dishwasher")
p db.execute("SELECT * FROM chores")

print_daily_list(db, "Wednesday")
print_personal_list(db, "Allie")