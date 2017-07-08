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
    miles FLOAT,
    time TIME,
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

def create_activity(db)
  puts "What's your name?"
  @first_name = gets.chomp.capitalize
  puts "What's your last name?"
  @last_name = gets.chomp.capitalize
  puts "What's your age?"
  @age = gets.chomp.to_i
  puts "What type of activity do you want to log?"
  @activity_type = gets.chomp.downcase
  puts "How many miles did you go?"
  @miles = gets.chomp.to_f
  puts "How much time did it take you? In minutes"
  @time = gets.chomp.to_f
  puts "Are you a professional athlete? Yes or no?"
  prof_athlete = gets.chomp.downcase
    if prof_athlete == "yes"
      @professional = "true"
    else
      @professional = "false"
    end
  db.execute("INSERT INTO activities (first_name, last_name, age, activity_type, miles, time, professional) VALUES (?, ?, ?, ?, ?, ?, ?)", [@first_name, @last_name, @age, @activity_type, @miles, @time, @professional])
end

def lookup_activity
  puts "Please type the first name of the person you want to look up:"
  @first_name = gets.chomp.capitalize
  puts "Please type her/his last name: "
  @last_name = gets.chomp.capitalize
    db.execute("SELECT * FROM activities")
  end


def menu
puts "Please type the number what you'd like to do:"
puts "1. Log and activity"
puts "2. Lookup my (or a friends) activities"
  @menu_select = gets.chomp.to_i
    if @menu_select = 1
      create_activity(db)
    else
      lookup_activity
    end
  end

# create_activity(db,"Laura", "Clark", 27, "Cycling", 42, 180, "true")

puts "Hi! Welcome to B U S T L E!"
puts
puts "BUSTLE lets you log any type of exercise or activity and calculate your speed."


menu

#create_activity(db)

activities = db.execute("SELECT * FROM activities ORDER BY activities.id")
activities.each do |activity|
 puts "#{activity['first_name']} #{activity['last_name']} did #{activity['miles']} miles of #{activity['activity_type']} at #{activity['miles']/(activity['time']/60)} mph"
end
