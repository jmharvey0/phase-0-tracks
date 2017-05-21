#Chores Scheduler
#require gems for SQL
require 'sqlite3'
#create SQL database
db = SQLite3::Database.new("chores.db")
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

#method to add to chores table
def add_chores
	
end
#method to add to family members
def add_family
	
end
#method to update to chores
def update_chores
	
end
#method to update to family members
def update_family
	
end