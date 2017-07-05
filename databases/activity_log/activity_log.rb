#Activity log program

#Pseudocode
#Input: user types in name, activity type, miles and time
#Steps: program takes in the users information and stores it as an individual row in a previously created database that collects activity logs from users
#Output: user's activity gets logged and ranked by activity type and time

#=========================================

require 'sqlite3'
require 'faker'

#Create SQLite3 database
db = SQLite3::Database.new("activities.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS activities(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    activity_type VARCHAR(255),
    miles INT,
    time INT,
    professional BOOLEAN
  )
SQL

#Create activities table
db.execute(create_table_cmd)

#Add a test activity
# db.execute("INSERT INTO activities (first_name, last_name, age, activity_type, miles, time, professional) VALUES ('Gabriela', 'Alessio',30,'Running',10,110,'false')")

#======WORKING METHOD ===================
# def create_activity(db, first_name, last_name, age, activity_type, miles, time, professional)
#   db.execute("INSERT INTO activities (first_name, last_name, age, activity_type, miles, time, professional) VALUES (?, ?, ?, ?, ?, ?, ?)", [first_name, last_name, age, activity_type, miles, time, professional])
# end

#===========================================

def create_activity(db, activity_type, miles, time, professional)
  puts "What's your name?"
  @first_name = gets.chomp
  puts "What's your last name?"
  @last_name = gets.chomp
  puts "What's your age?"
  @age = gets.chomp.to_i
  db.execute("INSERT INTO activities (first_name, last_name, age, activity_type, miles, time, professional) VALUES (?, ?, ?, ?, ?, ?, ?)", [@first_name, @last_name, @age, activity_type, miles, time, professional])
end

# create_activity(db,"Laura", "Clark", 27, "Cycling", 42, 180, "true")
create_activity(db, "Swimming", 3, 68, "true")

activities = db.execute("SELECT * FROM activities ORDER BY activities.id")
activities.each do |activity|
 puts "#{activity['first_name']} #{activity['last_name']} did #{activity['miles']} miles of #{activity['activity_type']}"
end
